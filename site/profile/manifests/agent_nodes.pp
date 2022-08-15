class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.docker.node':}
  dockeragent::node {'db.docker.node':}
  dockeragent::node {'minetest.docker.node':}
}
