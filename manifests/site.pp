node default {
  file {'/root/TESTPUPPET':
    ensure => file,
    content => 'This is a test',
    owner => 'root',
  }
}
node 'teamcity' {
  include role::master_server
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
