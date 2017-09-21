class example_app {
  anchor { 'example_app::begin':
    notify => Class['example_app_config'],
  }
  include example_app_config
  anchor { 'example_app::end':
    require => Class['example_app_config'],
  }
}

