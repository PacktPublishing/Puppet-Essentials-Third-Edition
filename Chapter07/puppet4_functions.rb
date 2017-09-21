# modules/utils/lib/puppet/functions/resolver.rb
require 'socket'
Puppet::Functions.create_function(:resolver) do
  def resolver()
    Socket.gethostname
  end
end

