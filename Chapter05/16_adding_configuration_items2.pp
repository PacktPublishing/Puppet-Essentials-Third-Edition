$search = "sed 1d | cut -f4- | grep -q '^${title}\$'"
exec { "add-cacti-device-${title}":
  command => "${cli}/add_device.php ${options}",
  path    => '/bin:/usr/bin',
  unless  => "${cli}/add_graphs.php --list-hosts | ${search}",
  require => Class[cacti],
}

