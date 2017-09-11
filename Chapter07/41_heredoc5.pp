class my_motd (
  Optional[String] $additional_content = undef
){
  $motd_content = @(EOF)
    Welcome to <%= $::fqdn %>.
    This system is managed by Puppet version <%= $::puppetversion %>.
    Local changes will be overwritten on next Puppet run.
    <% if $additional_content != undef { -%>
    <%= $additional_content %>
    <% } -%>
    | EOF
  file { '/etc/motd':
    ensure  => file,
    content => inline_epp($motd_content, { additional_content => $additional_content } ),
  }
}

