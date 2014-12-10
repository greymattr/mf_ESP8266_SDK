mf_ESP8266_SDK
==============

Personal repo for ESP8266 serial to wifi chip work


Prepare:
  you will need to build and setup the toolchain by following the instructions here:
  https://github.com/esp8266/esp8266-wiki/wiki/Toolchain
  
Full Instructions for building the firmware and SDK was found here:
  https://github.com/esp8266/esp8266-wiki/wiki
  
  
Sample Programs:
  The mf_ESP8266_SDK/examples directory contains 3 examples that were provided by the online community
  blinky - A 'das blinken lights' simple LED control program
  AT     - The default AT command app that made the ESP8266 so popular for Aeduino developers
  IoT_Demo - The Internet of things Demo application
  
Building the Examples:
Copy the example application folder to the top level mf_ESP8266_SDK folder.
  1. 2. cd mf_ESP8266_SDK/
  2. cp -a exmaples/blinky .
  3. cd to the sample application folder and edit the Makefile to reflect your toolchain directory, and build directoy
  4. type 'make' to build the sample application
  



