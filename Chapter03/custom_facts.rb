case Facter.value(:os['family'])
when"Solaris"
  fstab = "/etc/vfstab"
else
  fstab = "/etc/fstab"
end
