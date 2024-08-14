# 0x17. Web stack debugging #3

Tags
```
	- DevOps
	- SysAdmin
	- Scripting
	- Debugging
```

# Debugging a Web Stack

## Background Context

When debugging, logs may not always provide sufficient information. Sometimes, errors occur in unexpected ways that aren't captured by logs, or the logs themselves might lack the necessary details. In such cases, it's essential to dig deeper into the stack to identify and resolve the issue.

In this project, I focus on debugging a WordPress website running on a LAMP stack (Linux, Apache, MySQL, and PHP). WordPress is a highly popular platform used for running blogs, portfolios, e-commerce sites, and company websites. Given that WordPress powers 26% of the web, there's a good chance you'll encounter it in your career.

## Concepts

- **Web Server**
- **Web Stack Debugging**

### More Info

#### Install `puppet-lint`

To ensure Puppet manifests are compliant, you need to install `puppet-lint`:

```bash
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
```
