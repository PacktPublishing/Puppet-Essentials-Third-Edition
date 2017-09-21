# .../modules/packt_cacti/manifests/device.pp
define packt_cacti::device (
  $ip,
){
  $cli = '/usr/share/cacti/cli'
  $options = "--description='${title}' --ip='${ip}'"
  exec { "add-cacti-device-${title}":
    command => "${cli}/add_device.php ${options}",
    require => Class['cacti'],
  }
}

