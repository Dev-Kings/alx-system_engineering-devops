# 0x09. Web infrastructure design

## Project Description

This project focuses on understanding the key concepts and components involved in building a robust and scalable web stack.
The primary areas covered include DNS, monitoring, web servers, network basics, load balancers, and servers.
By the end of this project, you should be able to explain the architecture of a web stack, the role of each component,
and concepts related to system redundancy and high availability.

## Concepts

For this project, following are the concepts:

- DNS
- Monitoring
- Web Server
- Network Basics
- Load Balancer
- Server

## Learning Objectives

1. Drawing of a diagram of the web stack used.
2. Explaining the function of each component in the web stack.
3. Describe system redundancy and how it is achieved.
4. Understanding and explaining the following acronyms:
   - LAMP (Linux, Apache, MySQL, PHP)
   - SPOF (Single Point of Failure)
   - QPS (Queries Per Second)

## Tasks
0. Simple web stack
	Link to image of the design:
	```https://imgur.com/a/V0KnLCR
	The design uses:
	- 1 server
	- 1 web server (Nginx)
	- 1 application server
	- 1 application files (your code base)
	- 1 database (MySQL)
	- 1 domain name foobar.com configured with a www record that points to your server IP 8.8.8.8

1. Distributed web infrastructure
	Link to image of the design:
	```https://imgur.com/JTIDLzi
	The design uses:
	- 2 servers
	- 1 web server (Nginx)
	- 1 application server
	- 1 load-balancer (HAproxy)
	- 1 set of application files (your code base)
	- 1 database (MySQL)
