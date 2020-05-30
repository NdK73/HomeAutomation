/*
 * Configure flash for 4M (1M SPIFFS)
 * Remember to configure your default settings in data/cfg.json and upload it as LittleFS (*NOT* SPIFFS!)
*/
#include "globals.h"
#include "web.h"
#include "io.h"
#include "config.h"

void setup() {
  Serial.begin(115200);
//  Serial.println("\nStartup");

  Wire.begin();

  if(!disk.begin()) { // By default autoformat is active
//    Serial.println("Error initializing filesystem");
    while(true) delay(5000);
  }

  readConfig();

  pinMode(RL_1, OUTPUT);
  pinMode(RL_2, OUTPUT);
  pinMode(RL_3, OUTPUT);
  pinMode(RL_4, OUTPUT);
  PCA9555Status s=ext.begin();
  if(PCA9555Status::OK != s) {
//    Serial.println("Error initializing PCA9555");
    while(true) delay(5000);
  }
  ext.portMode(PCA9555Port::A, 0b11111100); // Port A mixed
  ext.portMode(PCA9555Port::B, 0b00000000); // Port B as ouput (LEDs)
  ext.inputInv(0b0000000011111100); // Invert inputs, to read '1' when 220V is applied

  relay(1, RL_OFF);
  relay(2, RL_OFF);
  relay(3, RL_OFF);
  relay(4, RL_OFF);
  relay(5, RL_OFF);
  relay(6, RL_OFF);
  ext.digitalWrite(LED_USER, LED_OFF);

  WiFi.persistent(false); // Avoid wear-out
  WiFi.mode(WIFI_AP_STA);
  WiFi.hostname(conf.host);

  if(conf.apname[0]) {
    WiFi.softAP(conf.apname, conf.appass);
    // Configure AP as captive portal *before* trying connections in STA mode
    delay(500); // Small delay to stabilize
    IPAddress apip=WiFi.softAPIP();
    //Serial.println(apip);
    dnsServer.setErrorReplyCode(DNSReplyCode::NoError);
    dnsServer.start(53, "*", apip);
  }

  for(int sta=0; sta<MAXSTA && conf.ssid[sta][0]; ++sta) {
    wifiMulti.addAP(conf.ssid[sta], conf.pass[sta]);
  }
}

// Flashes LED_USER with given semiperiod (in ms). If 0, turn LED off
void flash_user(int semip) {
  static long lastflash=0;
  static bool user_led=LED_OFF;
  if(!semip) {  // Turn LED off
    status[ST_LDU]='0';
    if(LED_ON==user_led) {
      user_led=LED_OFF;
      lastflash=0;
      ext.digitalWrite(LED_USER, LED_OFF);
    }
  } else {
    status[ST_LDU]='F';
    if(t-lastflash > semip) { // Flash LED
      lastflash=t;
      user_led=!user_led;
      ext.digitalWrite(LED_USER, user_led);
    }
  }

}

void loop() {
  static long conn_changed=0;
  static bool ota_started=false, ota_flashing=false;
  static enum State s=RESET;
  static bool conn_led=LED_ON;

  t=millis();
  bool conn=(WiFi.status() == WL_CONNECTED) || (wifiMulti.run() == WL_CONNECTED);

  if(conn) {
    if(!ota_started) {
      // Perform operations that need to run only once at connection
      // Avoid i2c comm if not needed
      conn_led=LED_ON;
      ext.digitalWrite(LED_CONN, conn_led);

      // Announce services
      MDNS.begin(conf.host);

      /* setup the OTA server once we're connected and have obtained an IP */
      ArduinoOTA.setHostname(conf.host);
      ArduinoOTA.onStart([]() {
        ext.writePort(PCA9555Port::B, 0b11111111); // All LEDs on
        disk.end();
      });
      ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
        static int last=0;
        static bool l=LED_OFF;
        l=!l;
        ext.digitalWrite(LED_USER, l);

        int n=(6*progress)/total;
        if(n==last) return;
        last=n;
        switch(n) { // All fall-through
          case 6:
            led(LED_6, LED_OFF);
          case 5:
            led(LED_5, LED_OFF);
          case 4:
            led(LED_4, LED_OFF);
          case 3:
            led(LED_3, LED_OFF);
          case 2:
            led(LED_2, LED_OFF);
          case 1:
            led(LED_1, LED_OFF);
        }
      });
      ArduinoOTA.onEnd([]() {
        ext.writePort(PCA9555Port::B, 0b11111110); // All LEDs off except USER_LED
      });
      httpUpdater.setup(&httpServer);
      httpServer.on("/status", HTTP_GET, webstatus);
      httpServer.on("/set", HTTP_POST, webouts);
      //@@@TODO httpServer.on("/setup", HTTP_POST, webconf);
//      httpServer.on("/favicon.ico", HTTP_GET, web404);
      httpServer.onNotFound(webpage);
      httpServer.begin();

      MDNS.addService("http", "tcp", 80);

      ArduinoOTA.begin(true); // use mDNS

      ota_started=true;
      conn_changed=t;
    }
    if(ota_started) {
      //MDNS.update();
      httpServer.handleClient();  // handle web pages
      ArduinoOTA.handle();  // Handle updates (calls MDNS.update() )
      dnsServer.processNextRequest();
    }
  } else {
    // Not yet connected
    if(t-conn_changed > 400) {
      conn_changed=t;
      ext.digitalWrite(LED_CONN, conn_led);
      conn_led=!conn_led;
    }
  }

  /*
   * Your FSM goes here
   */
  // Just animate the LEDs
  if(0==t%1000) {
    static int b=0;
    static long l=0;
    if(l!=t) {
      led(LED_1+b, LED_OFF);
      b=(b+1)%6;
      led(LED_1+b, LED_ON);
      l=t;
    }
  }
}
