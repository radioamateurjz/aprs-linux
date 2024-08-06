# Introduction
This are the files required to create a Service/Daemon to run the APRSLoop.sh at boot time.
# Installation Steps
- Copy the file APRSHostStart.sh to /usr/bin/ folder.
- Copy the file APRSHost.service to /lib/systemd/system folder.
- Run the commands: 
  systemctl daemon-reload
  systemctl enable APRSHost.service
- Restart the OS to test the installation.
- Run the following command to check the status of the service: systemctl status APRSHost
# Notes 
To start and stop the service the following commands should be used:
systemctl stop APRSHost
systemctl start APRSHost
