Facter.add(:msvs_version) do
  confine :kernel => :windows
  setcode do
    #...
  end
end

