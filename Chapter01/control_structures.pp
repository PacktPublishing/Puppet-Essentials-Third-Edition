if 'mail_lda' in $needed_services {
  service { 'dovecot': enable => true }
} else {
  service { 'dovecot': enable => false }
}

