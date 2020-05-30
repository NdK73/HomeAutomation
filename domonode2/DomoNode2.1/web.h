#pragma once
#include <ESP8266HTTPUpdateServer.h>
#include <ESP8266WebServer.h>

extern ESP8266WebServer httpServer;
extern ESP8266HTTPUpdateServer httpUpdater;

enum { // Pos in status[]
  ST_IN1=0,
  ST_IN2,
  ST_IN3,
  ST_IN4,
  ST_IN5,
  ST_IN6,
  ST_RL1,
  ST_RL2,
  ST_RL3,
  ST_RL4,
  ST_RL5,
  ST_RL6,
  ST_LD1,
  ST_LD2,
  ST_LD3,
  ST_LD4,
  ST_LD5,
  ST_LD6,
  ST_LDU,
  ST_MAX
};
extern char status[ST_MAX+1]; // Includes terminator

void webpage();
void webouts();
void webstatus();
