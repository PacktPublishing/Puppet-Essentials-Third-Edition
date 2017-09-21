file { '/etc/modules':
  ensure  => file,
  content => "# Managed by Puppet!\n\ndrbd\n",
}
