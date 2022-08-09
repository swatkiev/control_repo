node default {
  file {'/root/TESTPUPPET':
    ensure => file,
    content => 'This is a test',
    owner => 'root',
  }
}
