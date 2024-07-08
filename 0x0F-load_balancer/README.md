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
