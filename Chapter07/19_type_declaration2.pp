#firewall/types/ipaddress.pp
type Firewall::Ipaddress = Variant[Firewall::Ipv4, Firewall::Ipv6]

