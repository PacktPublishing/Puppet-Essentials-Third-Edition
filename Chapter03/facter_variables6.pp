if $::os['name'] == 'Debian' {
  if versioncmp($::os['release']['full'], '7.0') >= 0 {
    $ssh_ecdsa_support = true
  }
}

