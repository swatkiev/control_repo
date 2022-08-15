class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.docker.node':}
  dockeragent::node {'db.docker.node':}
  dockeragent::node {'minetest.docker.node':}
  host {'web.docker.node':
    ensure => present,
    ip => 'put here ip address of web.docker.node'
  }
  host {'db.docker.node':
    ensure => present,
    ip => 'put here ip address of db.docker.node'
  }
}
