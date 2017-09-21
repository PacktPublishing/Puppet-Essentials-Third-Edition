# .../modules/packt_cacti/manifests/config.pp
class packt_cacti::config {
  file { '/etc/apache2/conf.d/cacti.conf':
    mode   => '0644',
    source => '/usr/share/doc/cacti/cacti.apache.conf',
  }
}

