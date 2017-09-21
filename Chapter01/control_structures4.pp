package { 'dovecot':
  ensure  => $role ? {
    'imap_server' => 'installed',
    /desktop$/    => 'purged',
    default       => 'removed',
  },
}

