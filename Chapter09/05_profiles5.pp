# Class profile::apps::phpmyadmin
#
# uses jlondon/phpmyadmin
# configures the application and application vhost
#
class profile::apps::phpmyadmin {
  class { 'phpmyadmin': }
  phpmyadmin::server{ 'default': }
  phpmyadmin::vhost { 'internal.domain.net':
    vhost_enabled => true,
    priority      => '20',
    docroot       => $phpmyadmin::params::doc_path,
    ssl           => true,
  }
}

