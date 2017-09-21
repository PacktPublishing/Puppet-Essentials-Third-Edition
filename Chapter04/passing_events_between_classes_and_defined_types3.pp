symlink { [ 'England', 'Ireland', 'Germany' ]:
  notify => Service['example-app'],
}

