include puppetdb 
class { 'puppetdb::master::config':
  puppetdb_server => 'master.example.net',
}

