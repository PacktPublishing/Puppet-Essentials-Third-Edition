if hiera('use_caching_proxy', false) {
  include nginx
}

