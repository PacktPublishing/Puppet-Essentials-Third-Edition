define logrotate::conf(
  String  $pattern,
  Integer $max_days = 7,
  Array   $options  = [],
){
file { "/etc/logrotate.d/${title}":
  ensure  => file,
  mode    => '0644',
  content => epp('logrotate/config-snippet.epp',
    {
      'pattern'  => $pattern,
      'max_days' => $max_days,
      'options'  => $options,
    },),
  }
}

