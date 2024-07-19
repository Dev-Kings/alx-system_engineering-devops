# Understanding the Web Request Lifecycle: What Happens When You Type a URL?

## Introduction
This repository contains the blog post "What Happens When You Type https://www.google.com and Press Enter?" which explains the journey of a web request from your browser to the server and back. The blog post covers the following key components:
- DNS Request
- TCP/IP
- Firewall
- HTTPS/SSL
- Load Balancer
- Web Server
- Application Server
- Database

## Blog Post
You can read the full blog post on Medium: [Understanding the Web Request Lifecycle](https://medium.com/@kingasiadavid41/what-happens-when-you-type-https-www-google-com-and-press-enter-f2c1011a6fbb)

## Request Flow Diagram
The diagram below illustrates the flow of a request when you type a URL into your browser and press Enter:

```
User Types URL
       |
       v
DNS Resolution
       |
       v
Request Sent to Server IP on Port 443 (HTTPS)
       |
       v
Traffic Encrypted (HTTPS/SSL)
       |
       v
Firewall
       |
       v
Load Balancer
       |
       v
Web Server
       |
       v
Application Server
       |
       v
Database
       |
       v
Application Server Processes Data
       |
       v
Web Server Sends Response
       |
       v
User Receives and Decrypts Data
       |
       v
Web Page Displayed
```

Detailed Steps
1. DNS Request
The browser sends the URL to a DNS server, which resolves it to an IP address.

2. TCP/IP
The browser establishes a connection with the server using TCP/IP protocols.

3. Firewall
The request passes through a firewall that checks for security issues.

4. HTTPS/SSL
The connection is secured using HTTPS and SSL encryption.

5. Load Balancer
The request reaches a load balancer, which distributes it to one of the backend servers.

6. Web Server
The load balancer forwards the request to a web server.

7. Application Server
The web server sends the request to an application server for processing.

8. Database
The application server queries the database for any necessary data.

9. Response
The application server processes the data and sends it back to the web server, which then responds to the user's browser.

10. Display
The browser receives and decrypts the data, rendering the web page for the user.

### Conclusion
This blog post provides an in-depth look at the technical processes that occur when you type a URL and press Enter. By understanding these steps, readers can appreciate the complexity and efficiency of modern web interactions.

### License
This project is licensed under the MIT License - see the LICENSE file for details.
```
	Feel free to adjust the content to better suit your project or add any additional sections you find necessary.
```
