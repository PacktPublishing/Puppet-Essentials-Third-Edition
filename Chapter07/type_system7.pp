class ssh (
  Boolean                 $server = true,
  Optional[Array[String]] $allowed_users = undef,
  Integer[1,1023]         $sshd_port,
){
  if $server {
    include ssh::server
  }
}

