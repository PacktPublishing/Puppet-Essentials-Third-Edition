file_line { 'user admin proxy':
  ensure => present,
  path   => '/home/admin/.bashrc',
  line   => 'export http_proxy=http://proxy.domain.com:3127',
}

