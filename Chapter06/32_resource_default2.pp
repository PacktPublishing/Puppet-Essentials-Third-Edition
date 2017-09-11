class webserver {
  File { owner => 'www-data' }
  include apache, nginx, firewall, logging_client
  file {
    ...
  }
}
