class users (
  Hash[
    String,
    Struct[ { 'uid' => Integer,
              'home' => Pattern[ /^\/.*/ ] } ]
  ] $users
){
  notify { 'Valid hash': }
}

