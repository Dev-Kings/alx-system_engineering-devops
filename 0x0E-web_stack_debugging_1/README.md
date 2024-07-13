# 0x0E. Web stack debugging #1
Tags
```
	- DevOps
	- SysAdmin
	- Scripting
	- Debugging
```

This folder contains bash script entailing the steps to debug a broken system. Some of the key questions to ask and the appropriate commands to run include:

```
  - Does the server have free disk space? - df
  - Is the server able to keep up with CPU load? - w, top, ps
  - Does the server have available memory? free
  - Are the server disk(s) able to keep up with read/write IO? - htop
  - Does the server have the expected network interfaces and IPs up and running? ifconfig
  - Does the server listen on the sockets that it is supposed to? netstat (netstat -lpd or netstat -lpn)
  - Can you connect from the location you want to connect from, to the socket you want to connect to? telnet to the IP + PORT (telnet 8.8.8.8 80)
  - Is the software process running? pgrep, ps
  - Is the software started? init, init.d
```
