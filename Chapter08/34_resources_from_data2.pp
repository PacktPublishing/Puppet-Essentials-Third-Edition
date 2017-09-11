$resource_hash.each |$res_title,$attributes| {
  service { $res_title:
    ensure => $attributes['ensure'],
    enable => $attributes['enable'],
  }
}

