realize(Yumrepo['team_ninja_stable'])
realize(Yumrepo['team_wizard_experimental'])
package { 'doombunnies':
  ensure  => installed,
  require => [
    Yumrepo['team_ninja_stable'],
    Yumrepo['team_wizard_experimental'],
  ],
}

