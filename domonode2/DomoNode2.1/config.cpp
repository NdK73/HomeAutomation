#include "globals.h"
#include "config.h"

void readConfig()
{
  File f = disk.open(CFG_FILE, "r");
  StaticJsonDocument<500> tc;
  char defname[32]; // Just keeps temp hostname/apname
  sprintf(defname, "DN21_%08x", system_get_chip_id());

  if(f) {
//    Serial.println("Reading conf");
    deserializeJson(tc, f);
  }
  f.close();

  // Add missing keys with default values
  if(!tc.containsKey(CFG_KEY_HOST))
    tc[CFG_KEY_HOST]=defname;

  if(!tc.containsKey(CFG_KEY_APNAME))
    tc[CFG_KEY_APNAME]=tc[CFG_KEY_HOST];

  if(!tc.containsKey(CFG_KEY_APPASS))
    tc[CFG_KEY_APPASS]="";

  JsonArray ssid, pass;
  if(tc.containsKey(CFG_KEY_STASSID))
    ssid=tc[CFG_KEY_STASSID];
  else
    ssid=tc.createNestedArray(CFG_KEY_STASSID);

  if(tc.containsKey(CFG_KEY_STAPASS))
    pass=tc[CFG_KEY_STAPASS];
  else
    pass=tc.createNestedArray(CFG_KEY_STAPASS);

  for(int sta=ssid.size(); sta<MAXSTA; ++sta) {
    ssid.add("");
    pass.add("");
  }

//  serializeJsonPretty(tc, Serial);
//  Serial.println("");

  strlcpy(conf.host, tc[CFG_KEY_HOST] | defname, sizeof(conf.host));
//  Serial.printf("host=%s\n", conf.host);
  strlcpy(conf.apname, tc[CFG_KEY_APNAME] | conf.host, sizeof(conf.apname));
//  Serial.printf("apname=%s\n", conf.host);
  strlcpy(conf.apname, tc[CFG_KEY_APPASS], sizeof(conf.appass));

  for(int sta=0; sta<MAXSTA; ++sta) {
    strlcpy(conf.ssid[sta], tc[CFG_KEY_STASSID][sta], sizeof(conf.ssid[0]));
    strlcpy(conf.pass[sta], tc[CFG_KEY_STAPASS][sta], sizeof(conf.pass[0]));
  }
}
