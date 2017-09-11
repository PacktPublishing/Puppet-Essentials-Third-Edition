define users::user (
  Integer          $uid,
  Pattern[/^\/.*/] $home,
){
  notify { "User: ${title}, UID: ${uid}, HOME: ${home}": }
}

