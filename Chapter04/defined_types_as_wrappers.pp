define module_file(
  String $module
) {
  file { $title:
    source => "puppet:///modules/${module}/${title}",
  }
}

