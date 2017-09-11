class role::crm_db_control_panel {
  contain profile::login::secure
  contain profile::database::mysql
  contain profile::scripting::php
  contain profile::apps::phpmyadmin::db
  contain profile::apps::phpmyadmin
}

