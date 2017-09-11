@user { 'felix':
  ensure => present,
  groups => [ 'power', 'sys' ],
}
User <| groups == 'sys' |>

