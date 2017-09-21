newparam(:ping_method) do
  desc "How the device's reachability is determined.
    One of `tcp` (default), `udp` or `icmp`."
  validate do |value|
    [ :tcp, :udp, :icmp ].include (value.downcase.to_sym)
  end
  munge do |value|
    value.downcase.to_sym
  end
  defaultto :tcp
end

