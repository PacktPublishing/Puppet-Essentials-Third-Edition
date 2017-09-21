# .../packt_cacti/manifests/params.pp
class packt_cacti::params {
  case $osfamily {
    'Debian': {
      $cli_path = '/usr/share/cacti/cli'
    }
    'RedHat': {
      $cli_path = '/var/lib/cacti/cli'
    }
    default: {
      fail "the cacti module does not yet support the ${osfamily} platform"
    }
  }
}

