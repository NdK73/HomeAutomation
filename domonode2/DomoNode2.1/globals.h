#pragma once

#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>
#include <ESP8266mDNS.h>
#include <DNSServer.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>
#include <Wire.h>
#include "PCA9555.h"
#include <ArduinoJson.h>
#include <FS.h>
#include <LittleFS.h>

extern FS& disk;
extern PCA9555 ext;
extern DNSServer dnsServer;
extern ESP8266WiFiMulti wifiMulti;
extern long t; // to avoid constantly calling millis();

PROGMEM extern const char *CFG_FILE;
PROGMEM extern const char *CFG_KEY_HOST;
PROGMEM extern const char *CFG_KEY_APNAME;
PROGMEM extern const char *CFG_KEY_APPASS;
PROGMEM extern const char *CFG_KEY_STASSID;
PROGMEM extern const char *CFG_KEY_STAPASS;

// Up to 4 APs to connect to
#define MAXSTA 4

struct Conf {
  char host[32];    // Hostname
  char apname[32];
  char appass[32];
  char ssid[MAXSTA][32];
  char pass[MAXSTA][32];
};

extern struct Conf conf;

// States for FSM
enum State {
  RESET=0,  // Initial state
};
