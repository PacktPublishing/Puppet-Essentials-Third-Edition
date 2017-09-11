root@puppetmaster:~/chapter7# puppet apply -e 'include variables'
Error: Illegal variable name, The given name 'Local_var' does not conform to the naming rule /^((::)?[a-z]\w*)*((::)?[a-z_]\w*)$/ at /etc/puppetlabs/code/environments/production/modules/variables/manifests/init.pp:2:3 on node puppetmaster.example.net
