$active_countries = [ 'England', 'Ireland', 'Germany' ]
service { 'example-app':
  enable    => true,
  subscribe => Symlink[$active_countries],
}

