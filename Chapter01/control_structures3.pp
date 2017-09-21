case $role {
  Array: {
    include $role[0]
  }
  String: {
    include $role
  }
  default: {
    notify { 'This nodes $role variable is neither an Array nor a String':}
  }
}

