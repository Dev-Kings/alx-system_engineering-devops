file { '/path/to/fix/or/create':
  ensure  => 'file',
  content => 'Correct content for the file',
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
}

exec { 'fix-permissions':
  command => 'chmod 755 /path/to/fix',
  onlyif  => 'test $(stat -c "%a" /path/to/fix) != 755',
}
