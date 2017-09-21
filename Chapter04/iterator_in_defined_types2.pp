$region_data = {
  'england' => [ 'South East', 'London' ],
  'ireland' => [ 'Connacht', 'Ulster' ],
  'germany' => [ 'Berlin', 'Bayern', 'Hamburg' ],
}
$region_data.each |$country, $region_array| {
  $region_array.each |$region| {
    file { "/etc/example_app/conf.d.enabled/${country}/regions/${region}":
      ensure => link,
      target => "../../regions.available/${region}",
    }
  }
}

