# 0x0C. Web server
Tags
```
	- DevOps
	- SysAdmin
```

## Learning Objectives

At the end of this project, you should be able to explain to anyone, without the help of Google:

### General
- **What is the main role of a web server**
  - A web server's main role is to serve web content by responding to requests from clients (typically web browsers) over the HTTP protocol.

- **What is a child process**
  - A child process is a process created by another process (the parent process) to perform specific tasks. It runs as a separate instance with its own memory space but can share some resources with its parent.

- **Why web servers usually have a parent process and child processes**
  - Web servers often use a parent-child process model to handle multiple client requests simultaneously. The parent process manages the overall server operations, while child processes handle individual client requests. This improves efficiency and allows the server to handle more connections.

- **What are the main HTTP requests**
  - The main HTTP requests are:
    - **GET**: Requests data from a server.
    - **POST**: Submits data to be processed to a server.
    - **PUT**: Updates existing data on the server.
    - **DELETE**: Deletes data from the server.
    - **HEAD**: Retrieves headers from the server response without the body.
    - **OPTIONS**: Returns the HTTP methods that the server supports for a specific URL.
    - **PATCH**: Applies partial modifications to a resource.

### DNS
- **What DNS stands for**
  - DNS stands for **Domain Name System**.

- **What is DNS main role**
  - The main role of DNS is to translate human-friendly domain names (like www.example.com) into IP addresses (like 192.0.2.1) that computers use to identify each other on the network.

### DNS Record Types
- **A**
  - An A record (Address Record) maps a domain name to an IPv4 address.

- **CNAME**
  - A CNAME record (Canonical Name Record) maps an alias name to a true or canonical domain name. It allows you to point multiple domain names to the same server.

- **TXT**
  - A TXT record (Text Record) allows the domain administrator to insert arbitrary text into the DNS. It is often used for validation and security purposes.

- **MX**
  - An MX record (Mail Exchange Record) specifies the mail server responsible for receiving email messages on behalf of a domain.

