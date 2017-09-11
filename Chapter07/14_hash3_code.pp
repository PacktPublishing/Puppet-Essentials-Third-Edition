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

class users (
  Hash[
    String,
    Struct[ { 'uid' => Integer,
              'home' => Pattern[ /^\/.*/ ] } ]
  ] $users
){
  notify { 'Valid hash': }
}

class { 'users':
  users => $hash_map,
}

