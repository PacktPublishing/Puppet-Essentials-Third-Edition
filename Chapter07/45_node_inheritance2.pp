class profile::base {
  include security
  include ldap
  include base
}
class profile::webserver {
  class { 'apache': }
  include apache_mod_php
}
class role::webapplication {
  include profile::base
  include profile::webserver
  include profile::webapplication
}
node 'www01.example.net' {
  include role::webapplication
}

