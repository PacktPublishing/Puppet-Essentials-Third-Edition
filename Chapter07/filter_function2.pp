$hash = {
  'jones' => {
    'gid' => 'admin',
  },
  'james' => {
    'gid' => 'devel',
  },
  'john' => {
   'gid' => 'admin',
 },
}
$user_hash = $hash.filter |$key, $value| {
  $value['gid'] =~ /admin/
}
$user_list = keys($user_hash)
notify { "Users to create: ${user_list}": }

