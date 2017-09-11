# Class profile::login::secure
#
# Reuses profile::login classes
# adds known_host_file based on template
#
class profile::login::secure {
  include profile::ssh
  file { '/etc/ssh/ssh_known_hosts':
    ensure  => file,
    content => epp('profile/login/ssh_known_hosts.epp'),
  }
}

