class packt_cacti::install {
  include pack_cacti::params
  file { 'remove_device.php':
    ensure => file,
    path   => "${packt_cacti::params::cli_path}/remove_device.php",
    source => 'puppet:///modules/packt_cacti/cli/remove_device.php',
    mode   => '0755',
  }
}

