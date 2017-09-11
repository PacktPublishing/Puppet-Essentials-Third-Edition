node basenode {
  include security
  include ldap
  include base
}
node 'www01.example.net' inherits 'basenode' {
  class { 'apache': }
  include apache::mod::php
  include webapplication
}

