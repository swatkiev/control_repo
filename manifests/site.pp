node default {
  file {'/root/TESTPUPPET':
    ensure => file,
    content => 'This is a test',
    content => "Welcome to ${fqdn}\n",
    owner => 'root',
  }
}
node 'teamcity' {
  include role::master_server
}
node 'minetest.docker.node': {
  include role::minecraft_server
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
