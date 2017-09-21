include firewall
include loadbalancing
Class['loadbalancing'] -> Class['firewall']
