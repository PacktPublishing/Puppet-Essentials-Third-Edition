$packages = ['htop', 'less', 'vim']
each($packages) |String $package| {
  package { $package:
    ensure => latest,
  }
}

