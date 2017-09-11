class site::mysql_server01 {
  class { 'mysql': server_id => '1', ... }
}
class site::mysql_server02 {
  class { 'mysql': server_id => '2', ... }
}
# ...
class site::mysql_aux01 {
  class { 'mysql': server_id => '101', ... }
}
# and so forth ...

