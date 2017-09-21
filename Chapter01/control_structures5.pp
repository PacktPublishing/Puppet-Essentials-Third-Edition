package { 'dovecot':
  ensure => $role ? {
    Boolean => 'installed',
    String  => 'purged',
    default => 'removed',
  },
}

