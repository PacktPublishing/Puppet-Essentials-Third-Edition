class scripts_directory {
  file { [ '/opt/company/', '/opt/company/bin' ]:
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
}

