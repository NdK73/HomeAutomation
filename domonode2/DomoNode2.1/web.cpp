#include "globals.h"
#include "web.h"
#include "io.h"

ESP8266WebServer httpServer(80);
ESP8266HTTPUpdateServer httpUpdater;

//static const char index_html[] PROGMEM = R"=====(
//)=====";

char status[ST_MAX+1] = "??????oooooolllllll";

void webpage()
{
  File f;
  String req=httpServer.uri();
//Serial.println("serving request for "+httpServer.uri());

  if(req=="/") req="/index.html";
  req="/web"+req;

  f=disk.open(req, "r");
//Serial.println(f.fullName());
  if(f && f.isFile()) {
    httpServer.sendHeader("Connection", "close");
    httpServer.streamFile(f, mime::getContentType(req));
  } else {
    httpServer.sendHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    httpServer.sendHeader("Pragma", "no-cache");
    httpServer.sendHeader("Expires", "-1");
    httpServer.send(404, "text/plain", F("The droids you're looking for are not here"));
  }
  f.close();
}

void webouts()
{
  int line  = httpServer.arg("line").toInt();
  bool state= httpServer.arg("act")=="true";

  relay(line, state);

  httpServer.send(200, "plain/text; charset=UTF-8", "OK");
}

void webstatus()
{
  httpServer.sendHeader("Connection", "close");
  httpServer.send(200, "text/plain; charset=UTF-8", status);
}

/*
static void handleAuth(ESP8266WebServer::THandlerFunction f)
{
  if (!conf.useAuth || server.authenticate(conf.user, conf.pass)) {
    f();
  } else {
    server.requestAuthentication(DIGEST_AUTH);
  }
}
*/
