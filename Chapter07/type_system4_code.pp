class ssh (
  Boolean $server = true,
){
  if $server {
    include ssh::server
  }
}

class { 'ssh':
  server => 'false',
}

