class monolithic_security {
  package { [ 'iptables', 'rkhunter', 'postfix' ]:
    ensure => 'installed',
  }
  cron { 'run-rkhunter':
    ...
  }
  file { '/etc/init.d/iptables-firewall':
    source => ...,
    mode => 755,
  }
  file { '/etc/postfix/main.cf':
    ensure => 'file',
    content => ...,
  }
  service { [ 'postfix', 'iptables-firewall' ]:
    ensure => 'running',
    enable => true,
  }
}

class divided_security {
  include iptables_firewall
  include rkhunter
  include postfix
}

