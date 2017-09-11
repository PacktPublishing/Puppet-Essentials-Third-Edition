[ 'england', 'ireland', 'germany' ].each |$country| {
  file { "/etc/example_app/conf.d.enabled/${country}":
    ensure => 'link',
    target => "../conf.d.available/${country}",
  }
}

