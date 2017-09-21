class ssh (
  Boolean                       $server = true,
  Enum['des','3des','blowfish'] $cipher = 'des',
){
  if $server {
    include ssh::server
  }
}

class { 'ssh':
  cipher => 'foo',
}

