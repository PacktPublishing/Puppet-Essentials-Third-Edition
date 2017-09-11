node 'xndp12-sql09.example.net' {
  class { 'site::mysql_server':
    mysql_server_id => '103',
  }
}

