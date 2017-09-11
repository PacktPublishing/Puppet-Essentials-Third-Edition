class packt_cacti(
  $redirect = true,
){
  contain packt_cacti::install
  if $redirect {
    contain packt_cacti::redirect
  }
}

