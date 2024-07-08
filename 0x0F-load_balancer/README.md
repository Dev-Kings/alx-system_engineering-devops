# 0x0F. Load Balancer

## Background Context
In this project, we are tasked with improving our web stack by adding redundancy for our web servers. This will enable us to handle more traffic by doubling the number of web servers and make our infrastructure more reliable. If one web server fails, the second one will continue to handle requests.

We have been given two additional servers:
- `gc-web-02-XXXXXXXXXX`
- `gc-lb-01-XXXXXXXXXX`

## Resources
- [Introduction to load-balancing and HAProxy](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)
- [HTTP header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
- [Debian/Ubuntu HAProxy packages](https://haproxy.debian.net/)

## Requirements
- All files will be interpreted on Ubuntu 16.04 LTS

## Setup HAProxy Load Balancer

### Steps

1. **Update and Upgrade the Server**:
   Ensure your server is up to date with the latest packages.

2. **Install HAProxy**:
   Install the HAProxy package from the official Ubuntu repositories.

3. **Configure HAProxy**:
   Edit the HAProxy configuration file to set up load balancing between your web servers.

4. **Enable and Start HAProxy**:
   Ensure HAProxy starts on boot and then start the service.

### Bash Script

Below is a sample Bash script that accomplishes the above steps.

```bash
#!/usr/bin/env bash
# This script sets up HAProxy load balancer on Ubuntu 16.04

# Update and install HAProxy
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y haproxy

# Configure HAProxy
cat <<EOL | sudo tee /etc/haproxy/haproxy.cfg
frontend http_front
   bind *:80
   default_backend http_back

backend http_back
   balance roundrobin
   server web-01 gc-web-01-XXXXXXXXXX:80 check
   server web-02 gc-web-02-XXXXXXXXXX:80 check
EOL

# Enable and start HAProxy
sudo systemctl enable haproxy
sudo systemctl start haproxy
```

## Tasks:
0. Double the number of webservers
mandatory
In this first task you need to configure web-02 to be identical to web-01. Fortunately, you built a Bash script during your web server project, and they’ll now come in handy to easily configure web-02. Remember, always try to automate your work!

Since we’re placing our web servers behind a load balancer for this project, we want to add a custom Nginx response header. The goal here is to be able to track which web server is answering our HTTP requests, to understand and track the way a load balancer works. More in the coming tasks.

Requirements:

Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
The name of the custom HTTP header must be X-Served-By
The value of the custom HTTP header must be the hostname of the server Nginx is running on

Example:
```
sylvain@ubuntu$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
sylvain@ubuntu$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
sylvain@ubuntu$
```

Answer file : 0-custom_http_response_header

1. Install your load balancer
mandatory
Install and configure HAproxy on your lb-01 server.

Requirements:

Configure HAproxy so that it send traffic to web-01 and web-02
Distribute requests using a roundrobin algorithm
Make sure that HAproxy can be managed via an init script
Make sure that your servers are configured with the right hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02. If not, follow this tutorial.
For your answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements

Example:
```
sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes

sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:19 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
X-Served-By: 03-web-02
Accept-Ranges: bytes

sylvain@ubuntu$
```
Answer file : 1-install_load_balancer

2. Add a custom HTTP header with Puppet
#advanced
Just as in task #0, we’d like you to automate the task of creating a custom HTTP header response, but with Puppet.

The name of the custom HTTP header must be X-Served-By
The value of the custom HTTP header must be the hostname of the server Nginx is running on
Write 2-puppet_custom_http_response_header.pp so that it configures a brand new Ubuntu machine to the requirements asked in this task.

Answer file : 2-puppet_custom_http_response_header.pp
