define user_with_key(
  String           $key,
  Optional[String] $uid   = undef,
  String           $group = 'users'
){
  user { $title:
    ensure     => present,
    gid        => $group,
    uid        => $uid,
    managehome => true,
  }
  ssh_authorized_key { "key for ${title}":
    ensure => present,
    user   => $title,
    type   => 'rsa',
    key    => $key,
  }
}

