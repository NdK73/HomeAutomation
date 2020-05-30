#include "globals.h"

FS& disk=LittleFS;
ESP8266WiFiMulti wifiMulti;
PCA9555 ext=PCA9555();  // Default to using id 0 (i2c addr 0x20) and Wire
DNSServer dnsServer;
long t;

PROGMEM const char *CFG_FILE= "/cfg.json";
PROGMEM const char *CFG_KEY_HOST="host";
PROGMEM const char *CFG_KEY_APNAME="host";
PROGMEM const char *CFG_KEY_APPASS="host";
PROGMEM const char *CFG_KEY_STASSID="stassid";
PROGMEM const char *CFG_KEY_STAPASS="stapass";
struct Conf conf;
