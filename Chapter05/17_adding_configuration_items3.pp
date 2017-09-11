# in manifests/nodes.pp
node 'agent' {
  include packt_cacti
  packt_cacti::device { 'Puppet test agent (Debian 7)':
    ip => $::ipaddress,
  }
}

