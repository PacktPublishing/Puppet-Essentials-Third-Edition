module Puppet::Parser::Functions
  require "ipaddr"
  newfunction(:cacti_canonical_ip, :type => :rvalue) do |args|
    ip = args[0]
    begin
      IPAddr.new(ip)
      rescue ArgumentError
        raise "#{@resource.ref}: invalid IP address '#{ip}'"
    end
    ip.downcase
  end
end

