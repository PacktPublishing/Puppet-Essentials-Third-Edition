class site::mysql_server(
  $config = $mysql_config_table[$::certname]
){
  class { 'mysql':
    server_id => $config['server_id'],
    # ...
  }
}

