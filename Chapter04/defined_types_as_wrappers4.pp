define module_file(
  String           $module,
  Optional[String] $mode = undef,
) {
  if $mode != undef {
    File { mode => $mode, }
  }
  file { $title:
    source => "puppet:///modules/${module}/${title}",
  }
}

