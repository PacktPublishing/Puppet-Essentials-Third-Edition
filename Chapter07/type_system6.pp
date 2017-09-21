class ssh (
  Boolean                       $server = true,
  Enum['des','3des','blowfish'] $cipher = 'des',
  Optional[Array[String]]       $allowed_users = undef,
){
  if $server {
    include ssh::server
  }
}

