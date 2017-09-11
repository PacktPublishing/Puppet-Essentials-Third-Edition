virtual_host { 'wordpress':
  content  => file(...),
  priority => '011',
}
virtual_host { 'wordpress':
  content  => '# Dummy vhost',
  priority => '600',
}
