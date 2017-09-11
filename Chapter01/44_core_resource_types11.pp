mount { '/media/gluster-data':
  ensure  => 'mounted',
  device  => 'gluster01:/data',
  fstype  => 'glusterfs',
  options => 'defaults,_netdev',
  dump    => 0,
  pass    => 0,
}

