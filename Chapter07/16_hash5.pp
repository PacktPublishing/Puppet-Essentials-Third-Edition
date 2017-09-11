class users (
  Hash[String, Hash] $users
){
  $keys = keys($users)
  each($keys) |String $username| {
    users::user{ $username:
      uid  => $users[$username]['uid'],
      home => $users[$username]['home'],
    }
  }
}

