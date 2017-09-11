def exists?
  self.class.instances.find do |provider|
    provider.name == resource[:name]
  end
end

