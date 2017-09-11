class profile::puppet::master::r10k_webhook {
  class {'r10k::webhook::config':
    enable_ssl      => false,
    use_mcollective => false,
  }
  class {'r10k::webhook':
    use_mcollective => false,
    user            => 'root',
    group           => '0',
  }
}

