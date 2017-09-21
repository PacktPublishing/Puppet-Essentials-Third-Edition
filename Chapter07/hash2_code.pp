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
  Hash $users
){
  notify { 'Valid Hash': }
}
class { 'users':
  users => $hash_map,
}

