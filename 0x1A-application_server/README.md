# 0x1A. Application server

Tags
```
	- DevOps
	- SysAdmin
```

## Context

My web infrastructure is already serving web pages via Nginx, which was installed in [my web stack project](https://github.com/Dev-Kings/alx-system_engineering-devops/tree/main/0x0C-web_server). 
While a web server like Nginx can serve static content, dynamic content is usually served by an application server. 
In this project, I added an application server to my infrastructure, plugging it into Nginx, and configuring it to serve my [AirBnB clone project](https://github.com/Dev-Kings/AirBnB_clone_v2) .

## Objective

The goal of this project is to set up an application server that will serve the [AirBnB clone project](https://github.com/Dev-Kings/AirBnB_clone_v2) I did earlier.
I integrated the application server with Nginx to deliver dynamic content, ensuring a robust and scalable web infrastructure.

## Prerequisites

Before starting, I ensured I had:

- Nginx installed and configured to serve static content.
- AirBnB clone project ready to be served dynamically.
  
## Resources I went through

- [**Application Server vs Web Server**](https://www.f5.com/glossary/application-server-vs-web-server): Understanding the difference between serving static and dynamic content, and how an application server fits into my infrastructure.
  
- [**How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 22.04**](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-20-04)
  
- [**Running Gunicorn**](https://docs.gunicorn.org/en/latest/run.html): I learnt how to run my Flask application using Gunicorn, ensuring it is properly configured for production.

- [**Flask Routing (strict_slashes)**](https://werkzeug.palletsprojects.com/en/3.0.x/)

- [**Upstart Documentation**](https://doc.ubuntu-fr.org/upstart)
