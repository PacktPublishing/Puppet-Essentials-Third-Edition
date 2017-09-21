# .../modules/packt_cacti/manifests/install.pp
class packt_cacti::install {
  package { 'cacti':
    ensure => 'installed',
  }
}

