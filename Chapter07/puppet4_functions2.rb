require 'socket'
Puppet::Functions.create_function(:resolver) do
  dispatch :ip_param do
    param 'Pattern[/^( :[0-9]{1,3}\.){3}[0-9]{1,3}$/]', :ip
  end
  dispatch :fqdn_param do
    param 'Pattern[/^([a-z0-9\.].*)$/]', :fdqn
  end
  dispatch :no_param do
  end
  def no_param
    Socket.gethostname
  end
  def ip_param(ip)
    Resolv.getname(ip)
  end
  def fqdn_param(fqdn)
    Resolv.getaddress(fqdn)
  end
end

