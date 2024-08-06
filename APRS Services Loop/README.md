# Introduction
The scripts in this folder are designed to run an APRS station using Xastir and Direwolf, and to provide subsecuent re-runs in case of a Direwolf failure.
The scripts where designed to run in the standard Linux of a Raspberry Pi, but they can run on any Linux distribution of any platform.
# Details
The script APRSLoop.sh has an infinite loop that does the following:
- Kills Xastir process by its name
- Starts Xastir in background
- Starts Direwolf in foreground
If Direwolf dies for some reason, loop starts again. This way not only Direwolf re-starts every time it fails, but also Xastir re-starts in case of a Direwolf failure. This last thing is necessary because in case of a Direwolf failure Xastir won't attempt to re-connect and will be left unconnected from the TNC.
# Notes
- To run the script you should have installed Xastir and Direwolf. You should have Xastir and Direwolf configured aswell.
- I'm including an example of direwolf configuration in the file direwolf.com
- The file should be located in the folder /home/pi (or the home folder of your user, but beaware of changing the path in the files that use home path inside this repo)
# Additionals
In the folder SERVICE-DAEMON there's a service that can be installed to run the APRSLoop.sh at boot time. Be aware that id of soundcards could change at boot time, and that could lead to Direwolf failures or to Direwolf to choose the wrong soundcard.
# 73!
Javier Zanon
Amateur Radio Operator - LU6EOW
QAP QRV from Buenos Aires - Argentina