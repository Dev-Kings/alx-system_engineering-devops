# This manifest fixes the 500 Internal Server Error by correcting file
# permissions and paths for the Apache web server.

file { '/var/www/html/index.php':
  ensure  => file,
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  content => '<?php phpinfo(); ?>',
}

exec { 'fix-apache-permissions':
  command => 'chmod 755 /var/www/html/index.php',
  onlyif  => 'test $(stat -c "%a" /var/www/html/index.php) != 755',
}

service { 'apache2':
  ensure  => running,
  enable  => true,
  require => File['/var/www/html/index.php'],
}
