class users (
  Hash $users
){
  notify { 'Valid Hash': }
}
class { 'users':
  users => $hash_map,
}

