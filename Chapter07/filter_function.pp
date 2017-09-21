$pkg_array = [ 'libjson', 'libjson-devel', 'libfoo', 'libfoo-devel']
$dev_packages = $pkg_array.filter |$element| {
  $element =~ /devel/
}
notify { "Packages to install: ${dev_packages}": }

