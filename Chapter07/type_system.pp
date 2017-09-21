class ssh (
  $server = true,
){
  if $server {
    include ssh::server
  }
}

