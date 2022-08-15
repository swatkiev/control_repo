class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@teamcity':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'for ssh key make ssh-keygen command on master node (teamcity in example), than copy middle part of it and paste to key section in ssh_server.pp',
  }  
}
