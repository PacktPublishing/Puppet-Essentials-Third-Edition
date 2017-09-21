file { '/etc/puppetlabs/facter/facts.d/site-facts.yaml':
  ensure => 'file',
  source => 'puppet:///...',
}
