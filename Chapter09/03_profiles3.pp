# Class profile::database::mysql
#
# Needs data in hiera:
# - mysql_root_password (String), defaults to 123456
# - mysql_database (Hash)
#
class profile::database::mysql {
  $mysql_root_password = lookup('mysql_root_password', String, 'first', '123456')
  $mysql_database = lookup('mysql_database', Hash, 'deep', '')
  class { 'mysql':
    root_password           => $mysql_root_password,
    remove_default_accounts => true,
  }
  class { 'mysql::bindings':
    php_enable => true,
  }
  $mysql_database.each |$db, $options| {
    mysql::db { $db:
      * => $options,
    }
  }
}
