.. oshwabadge2018 documentation master file, created by
   sphinx-quickstart on Fri Aug  3 01:53:45 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.




Getting Started
==================

Your badge is based on an ESP32-wroom-32 module and a GDEH0213B1 e-paper display. It also contains a KX122-1037 Accelerometer and a footprint for a microsd card that can be soldered on as a soldering exercise.

If your badge has your name on it it's been pre-configured already. If no name has been set the badge will display the OHS logo.


The Apps Menu
------------------
Your badge can run python scripts found in it's 'apps' directory. Clicking the Apps icon takes you to a menu where you can select the script you want to run.

Notice that the first 3 scripts do not end in '.py'.  These are built in features of your module.

 - Change Name
 - Start FTP Server
 - Serial REPL


Change Name
+++++++++++++++++++
This option will cause the badge to create an access point named 'ohsbadge-80:7d:3a:xx:xx:xx' where the last 6 digits will be specific to your badge. This access-point name and an auto-generated password will be printed to the screen. IF you visit the url 'http://192.168.4.1/setup' after connecting to the access-point you will be taken to a form where you can change the displayed name.

Start FTP Server
+++++++++++++++++++
This option will also cause the badge to create an access-point but instead of launching a webserver the badge will start a FTP server. You can connect to this FTP server from your device and add/remove scripts. Any script placed in the apps directory will come up in the apps menu.

Serial REPL
+++++++++++++++++++
This option will launch a python console that can be accessed over the serial port headers (J1)


Shitty Addons
-------------------
Your badge has a `Shitty Addon Connector <https://hackaday.com/2018/06/21/this-is-the-year-conference-badges-get-their-own-badges/shitty-add-on-standard/>`_ that breaks out 3.3v, ground, sda, and scl. for the addition of all sorts of hats and addons.

Badge Development
===================

Building and Flashing
----------------------

Compiling firmware from scratch
++++++++++++++++++++++++++++++++++++
Run the following lines on an ubuntu 16.04 or newer linux install.::

  sudo apt-get install git wget make libncurses-dev flex bison gperf python python-serial
  git clone https://github.com/oshwabadge2018/ohs2018-badge-firmware.git
  cd ohs2018-badge-firmware
  bash scripts/build.sh


Your firmware will be built in 'micropython/ports/esp32/'

Flashing Your Module
++++++++++++++++++++++++++++++++++++++
Flashing without the programming jig can be a bit annoying.

 - Short en0 to GND
 - while en0 is shorted short RST to ground
 - while en0 is still shorted to GND release RST and wait 3 seconds
 - connect your serial cable to rx and tx
 - in the 'micropython/ports/esp32/' directory run 'make deploy'

Hacking the hardware
------------------------

Accessing the KiCad PCB design
++++++++++++++++++++++++++++++++
The board was made in kicad and is `available on github <https://github.com/oshwabadge2018/ohs18badge>`_.

Pre-Generated Schematics
+++++++++++++++++++++++++++
These are also hosted on github and `can be found here <https://github.com/oshwabadge2018/ohs18badge/blob/607e4ca405daa215bd4eab3f1ffea525b4532651/badge-rev4.pdf>`_
 


