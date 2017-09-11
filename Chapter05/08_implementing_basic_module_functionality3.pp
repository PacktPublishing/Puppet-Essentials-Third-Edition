# .../modules/packt_cacti/manifests/redirect.pp
class packt_cacti::redirect {
  file { '/etc/apache2/conf.d/cacti-redirect.conf':
    ensure  => file,
    source  => 'puppet:///modules/packt_cacti/etc/apache2/conf.d/cacti-redirect.conf',
    require => Package['cacti'];
  }
}

