class packt_cacti(
  $redirect = true,
) {
  if $redirect {
    contain packt_cacti::redirect
  }
  package { 'cacti':
    ensure => installed,
  }
}

