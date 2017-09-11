define packt_cacti::device($ip) {
  $cli = '/usr/share/cacti/cli'
  $c_ip = cacti_canonical_ip($ip)
  $options = "--description='${title}' --ip='${c_ip}'"
  exec { "add-cacti-device-${title}":
    command => "${cli}/add_device.php ${options}",
    require => Class[cacti],
  }
}

