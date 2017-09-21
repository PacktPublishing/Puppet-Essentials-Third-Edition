define packt_cacti::graph(
  $device,
  $graph=$title
){
  $add = '/usr/local/bin/cacti-add-graph'
  $find = '/usr/local/bin/cacti-find-graph'
  exec { "add-graph-${title}-to-${device}":
    command => "${add} '${device}' '${graph}'",
    path    => '/bin:/usr/bin',
    unless  => "${find} '${device}' '${graph}'",
  }
}

