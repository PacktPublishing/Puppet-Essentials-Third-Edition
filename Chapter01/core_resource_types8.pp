exec { 'perl -MCPAN -e "install YAML"':
  path   => '/bin:/usr/bin',
  unless => 'cpan -l | grep -qP ^YAML\\b',
}

