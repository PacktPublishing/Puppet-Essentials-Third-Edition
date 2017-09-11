$packages = [
  'apache2',
  'libapache2-mod-php5',
  'libapache2-mod-passenger',
]
package { $packages:
  ensure => 'installed'
}

