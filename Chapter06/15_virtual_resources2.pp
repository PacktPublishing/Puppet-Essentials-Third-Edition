include yumrepos::team_ninja_stable
include yumrepos::team_wizard_experimental
package { 'doombunnies':
  ensure  => installed,
  require => [
    Class['yumrepos::team_ninja_stable'],
    Class['yumrepos::team_wizard_experimental'],
  ],
}

