class puppet_symlinks {
  $symlinks = [ 'puppet', 'facter', 'hiera' ]
  $symlinks.each | String $symlink | {
    file { "/usr/local/bin/${symlink}":
      ensure => link,
      target => "/opt/puppetlabs/bin/${symlink}",
    }
  }
}

