def self.instances
  return @instances ||= add_graphs("--list-hosts").
    split("\n").
    drop(1).
    collect do |line|
      fields = line.split(/\t/, 4)
      Puppet.debug "prefetching cacti_device #{fields[3]} "+
        "with ID #{fields[0]}"
      new(:ensure => :present,
        :name => fields[3],
        :id => fields[0])
    end
end

