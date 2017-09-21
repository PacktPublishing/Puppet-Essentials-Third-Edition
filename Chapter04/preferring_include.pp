class apache {
  class { 'apache::service': }
  class { 'apache::package': }
  class { 'apache::config': }
}

