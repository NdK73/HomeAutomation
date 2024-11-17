# Use DomoNode 2.1 from ESPHome

Recently ESPHome started supporting TCA9555 expander: that greatly simplifies integrating a DomoNode 2.1 in Home Assistant.

The HW template to use is [DomoNode21.yaml](DomoNode21.yaml) . Just save it under esphome/ folder (I usually store board definition files in esphome/boards/DomoNode/) and create your device as:

    substitutions:
      device_name: test
      upper_devicename: Test
    
    packages:
      domonode: !include boards/DomoNode/DomoNode21.yaml
    
    esphome:
      name: $device_name
    
    # Enable Home Assistant API
    api:
      encryption:
        key: "useASecureKey"
      reboot_timeout: 0s
    
    ota:
      - platform: esphome
        password: "BetterHaveAGoodKeyHereToo"
    
    # A web page is useful...
    web_server:
      port: 80
      version: 2
    
    # You can also override the settinsg like:
    output:
      - id: !extend led1
        invert: true
    light:
      - id: !extend rl1
        name: "Main Power line"
