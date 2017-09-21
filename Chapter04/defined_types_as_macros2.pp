define example_app_config {
  file { "/etc/example_app/conf.d.enabled/${title}":
    ensure => 'link',
    target => "../conf.d.available/${title}",
  }
}

