define logrotate::config(
  Integer $rotations = hiera('logrotate::rotations', 7)
){
  # regular define code here
}

