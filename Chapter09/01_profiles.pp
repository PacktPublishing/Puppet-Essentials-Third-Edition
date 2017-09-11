# Class profile::login
#
# manages ssh access
# company policy requires the following settings:
# - forbid root login
# - forbid x11 forwarding
# - allow login based on group (admins)
#
# We have several other settings which are put into our own
# sshd_config template file
#
class profile::login {
  class { 'ssh':
    sshd_x11_forwarding     => false,
    sshd_config_template    => epp('profile/login/sshd_config.epp'),
    sshd_config_allowgroups => ['admins'],
    permit_root_login       => 'no',
  }
}

