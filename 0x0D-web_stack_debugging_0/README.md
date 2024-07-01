# 0x0D. Web stack debugging #0

## Tags
```
	- DevOps
	- SysAdmin
	- Scripting
	- Debugging
```

## Overview

The Webstack Debugging Series will train you in the art of debugging. Computers and software rarely work the way we want (that’s the “fun” part of the job!).

Being able to debug a webstack is essential for a Full-Stack Software Engineer, and it takes practice to master it.

## Objective

In this debugging series, broken/bugged webstacks will be given to you. The final goal is to come up with a Bash script that, once executed, will bring the webstack to a working state. Before writing this Bash script, you should figure out what is going wrong and fix it manually.

## Example Task

Let's start with a very simple example. My server must:
- Have a copy of the `/etc/passwd` file in `/tmp`
- Have a file named `/tmp/isworking` containing the string "OK"

Let’s pretend that without these two elements, my web application cannot work.

## Steps to Fix the Server

1. **Run Docker Container**:
   ```bash
   	vagrant@vagrant:~$ docker run -d -ti ubuntu:14.04
	Unable to find image 'ubuntu:14.04' locally
	14.04: Pulling from library/ubuntu
	34667c7e4631: Already exists
	d18d76a881a4: Already exists
	119c7358fbfc: Already exists
	2aaf13f3eff0: Already exists
	Digest: sha256:58d0da8bc2f434983c6ca4713b08be00ff5586eb5cdff47bcde4b2e88fd40f88
	Status: Downloaded newer image for ubuntu:14.04
	76f44c0da25e1fdf6bcd4fbc49f4d7b658aba89684080ea5d6e8a0d832be9ff9
	vagrant@vagrant:~$ docker ps
```
Output
```
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
76f44c0da25e        ubuntu:14.04        "/bin/bash"         13 seconds ago      Up 12 seconds                           infallible_bhabha
```
Access the container
```
	vagrant@vagrant:~$ docker exec -ti 76f44c0da25e /bin/bash
```
Fix the server
```
	root@76f44c0da25e:/# cp /etc/passwd /tmp/
	root@76f44c0da25e:/# echo OK > /tmp/isworking
```
Verify the fix
```
	root@76f44c0da25e:/# ls /tmp/
```
Output
```
	isworking  passwd
```
Your answer file should contain the following Bash script to automate the fix:
```
	#!/usr/bin/env bash
	# Fix my server with these magic 2 lines
	cp /etc/passwd /tmp/
	echo OK > /tmp/isworking
```
