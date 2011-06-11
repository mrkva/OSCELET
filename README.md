#OSCELET

Processing + Kinect -> OSC skeleton

with example use in MaxMSP and Supercollider

Requirements:

* osc5
* simple-open-ni

Program is set up to send to 57120 (default Supercollider port). So far it's just torso, but rest can be added easily.

##How to:
1. Start the OSCELET application or run the source code in Processing
2. Run your receiveing application and make sure that the port is set up to 57120.
3. Calibrate your position as usual.
4. Receive and have fun!

The whole processing part is built on top of Max Rheiner example for simple open ni library.

Enjoy!

Pure Data example interface:

![Pure Data example interface](https://github.com/mrkva/OSCELET/raw/master/PureData/PureData.png)

Max/MSP example interface prototype

![MaxMSP example interface](https://github.com/mrkva/OSCELET/raw/master/interfaces/1_example.png)

Max/MSP example interface

![MaxMSP example interface](https://github.com/mrkva/OSCELET/raw/master/interfaces/1_example_max.png)
