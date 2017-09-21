Facter.add(:cacti_graph_templates) do
  setcode do
    cmd = "/usr/share/cacti/cli/add_graphs.php"
    Facter::Core::Execution.exec("#{cmd} --list-graph-templates").
      split("\n").
      drop(1).
      collect do |line|
        line.split(/\t/)[1]
      end
  end
end

