class puppet_symlinks {
  $symlinks = [ 'puppet', 'facter', 'hiera' ]
  puppet_symlinks::symlinks { $symlinks: }
}
define puppet_symlinks::symlinks {
  file { "/usr/local/bin/${title}":
    ensure => link,
    target => "/opt/puppetlabs/bin/${title}",
  }
}

