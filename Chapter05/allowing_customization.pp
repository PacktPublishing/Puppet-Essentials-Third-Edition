define packt_cacti::device(
  $ip,
  $ping_method='icmp'
){
  $cli = '/usr/share/cacti/cli'
  $base_opt = "--description='${title}' --ip='${ip}'"
  $ping_opt = "--ping_method=${ping_method}"
  $options = "${base_opt} ${ping_opt}"
  $search = "sed 1d | cut -f4- | grep -q '^${title}\$'"
  exec { "add-cacti-device-${title}":
    command => "${cli}/add_device.php ${options}",
    path    => '/bin:/usr/bin',
    unless  => "${cli}/add_graphs.php --list-hosts  | ${search}",
    require => Class[cacti],
  }
}

