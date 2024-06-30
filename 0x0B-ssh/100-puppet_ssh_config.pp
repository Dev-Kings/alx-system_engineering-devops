# This puppet manifest sets up client SSH config file in order
# to connect to server without typing password.

file_line { 'Declare identity file':
	ensure => 'present',
	path => '/etc/ssh/ssh_config',
	line => 'IdentityFile ~/.ssh/school',
}

file_line { 	'Turn off password auth':
	path => '/etc/ssh/ssh_config',
	line => 'PasswordAuthentication no',
}
