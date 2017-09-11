if $os_family == 'Debian' {
  file { '/etc/apt/preferences.d/example.net.prefs':
    content => '...',
    before  => Package['apache2'],
  }
}
package { 'apache2':
  ensure => 'installed',
}

