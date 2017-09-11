# Class profile::apps::phpmyadmin::db
#
# uses jlondon/phpmyadmin module
# exports the setting for phpmyadmin
#
class profile::apps::phpmyadmin::db {
  @@phpmyadmin::servernode { $::ipaddress:
    server_group => 'default',
  }
}

