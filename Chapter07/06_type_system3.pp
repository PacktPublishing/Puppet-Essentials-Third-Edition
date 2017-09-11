class ssh (
  $server = true,
){
  validate_bool($server)
  if $server {
    include ssh::server
  }
}

