class site::mysql_server(
  String $mysql_server_id
){
  class { 'mysql':
    server_id => $mysql_server_id,
    ...
  }
}

