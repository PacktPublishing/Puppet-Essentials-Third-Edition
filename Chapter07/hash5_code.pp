$hash_map = {
  'ben'     => {
    'uid'   => 2203,
    'home'  => '/home/ben',
  },
  'jones'   => {
    'uid'   => 2204,
    'home'  => 'home/jones',
  }
}

define users::user (
  Integer          $uid,
  Pattern[/^\/.*/] $home,
){
  notify { "User: ${title}, UID: ${uid}, HOME: ${home}": }
}

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

class { 'users':
  users => $hash_map,
}

