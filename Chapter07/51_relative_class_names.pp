# in module "mysql"
class mysql {
  # ...
}
# in module "application"
class application::mysql {
  include mysql
}

