# Domoticz

Domoticz is a Home Automation System that lets you monitor and configure various devices like: Lights, Switches, various sensors/meters like Temperature, Rain, Wind, UV, Electra, Gas, Water and much more. Notifications/Alerts can be sent to any mobile device

## The 'cibuild' branch in Github

This branch contains the necessary changes to support
* building from a Git repository
  * the build scripts extract Domoticz version number from the Subversion revision
    * the scripts can now also read the latest Subversion revision from the 'git-svn' commit logs
  * this is also necessary to support builds in Appveyor and Travis-ci
* creation of the Windows installation package
  * there was a bug the installer definition file
* YAML files for Appveyor (Windows build) and Travis-ci (Ubuntu x64 build)

## Continuous Integration status

* the Windows build is built by Appveyor: https://ci.appveyor.com/project/ToniA/domoticz
  * the build result is pushed into the Github Releases: https://github.com/domoticz/domoticz/releases
  * status of the latest build: ![alt text](https://ci.appveyor.com/api/projects/status/github/domoticz/domoticz "build status")
* the Ubuntu x64 build is built by Travis-ci: https://travis-ci.org/domoticz/domoticz
  * the build result is not published, as Domoticz is typically build on the machine it's installed into
  * status of the latest build: ![alt text](https://api.travis-ci.org/domoticz/domoticz.svg "build status")

## Multi platform: Linux/Windows/Embedded Devices

This system is designed to operate in various operating systems.
The user-interface is a scalable HTML5 web frontend, and is automatically adapted for Desktop and Mobile Devices.
Compatible with all recent browsers

Some Information
- Hardware: RFXCOM Transciever, Z-Wave, P1 Smart Meter, YouLess Meter, Pulse Counters, 1-Wire, Philips Hue and a lot more....
- Extended logging
- iPhone / Android push notifications
- Auto Learning sensors/switches
- Manual creation of switch codes
- Share / Use external devices
- Designed for simplicity

# More information
* Website: http://www.domoticz.com
* Forum http://www.domoticz.com/forum
* Wiki http://www.domoticz.com/wiki
