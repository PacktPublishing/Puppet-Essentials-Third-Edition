Facter.add(:ipaddress) do
  confine :kernel => :linux
  ...
end
Facter.add(:ipaddress) do
  confine :kernel => %w{FreeBSD OpenBSD Darwin DragonFly}
  ...
end
...

