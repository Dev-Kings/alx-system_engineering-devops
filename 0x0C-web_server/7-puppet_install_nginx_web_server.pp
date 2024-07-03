# Puppet Manifest to install and configure Nginx web server

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Define Nginx service
service { 'nginx':
  ensure => running,
  enable => true,
}

# Configure Nginx main configuration file
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  replace => true,
  content => template('nginx/default.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create a custom index.html file
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create a custom 404.html file
file { '/var/www/html/404.html':
  ensure  => file,
  content => 'Ceci n\'est pas une page',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Set up a 301 redirect for /redirect_me
nginx::resource::vhost { 'redirect_me':
  ensure      => present,
  www_root    => '/var/www/html',
  listen_port => '80',
  proxy       => 'http://www.youtube.com',
  redirects   => [
    {
      'from'   => '/redirect_me',
      'to'     => 'https://www.youtube.com/watch?v=QH2-TGUlwu4',
      'status' => '301',
    },
  ],
}

# Ensure Nginx listens on port 80
nginx::resource::vhost { 'default':
  ensure      => present,
  www_root    => '/var/www/html',
  listen_port => '80',
}

# Restart Nginx if the configuration changes
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}
