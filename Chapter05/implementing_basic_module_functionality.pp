# .../modules/packt_cacti/manifests/init.pp
class packt_cacti {
  package { 'cacti':
    ensure => installed,
  }
}

