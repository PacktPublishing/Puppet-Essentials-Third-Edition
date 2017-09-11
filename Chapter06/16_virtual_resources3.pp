class yumrepos::all {
  @yumrepo { 'tem_ninja_stable':
    ensure => present,
    tag    => 'stable',
  }
  @yumrepo { 'team_wizard_experimantel':
    ensure => present,
    tag    => 'experimental',
  }
}

