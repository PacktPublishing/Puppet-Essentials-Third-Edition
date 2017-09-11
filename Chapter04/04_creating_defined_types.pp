define virtual_host(
  String $content,
  String[3,3] $priority = '050'
){
  file { "/etc/apache2/sites-available/${name}":
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $content
  }
  file { "/etc/apache2/sites-enabled/${priority}-${name}":
    ensure => 'link',
    target => "../sites-available/${name}";
  }
}

