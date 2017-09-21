define packt_cacti::device(
  $ensure='present',
  $ip,
  $ping_method='icmp',
){
  $cli = '/usr/share/cacti/cli'
  $search = "sed 1d | cut -f4- | grep -q '^${title}\$'"
  case $ensure {
    'present': {
      # existing cacti::device code goes here
    }
    'absent': {
      $remove = "${cli}/remove_device.php"
      $get_id = "${remove} --list-devices | awk -F'\\t''\$4==\"${title}\" { print \$1 }'"
      exec { "remove-cacti-device-${name}":
        command => "${remove} --device-id=\$( ${get_id})",
        path    => '/bin:/usr/bin',
        onlyif  => "${cli}/add_graphs.php --list-hosts | ${search}",
        require => Class[cacti],
      }
    }
  }
}

