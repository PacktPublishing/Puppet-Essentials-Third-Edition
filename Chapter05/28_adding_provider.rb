Puppet::Type.type(:cacti_device).provide(
  :cli,
  :parent => Puppet::Provider
) do
end

