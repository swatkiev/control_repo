# control_repo

# Puppet test

https://www.heyvaldemar.net/ustanovka-puppet-na-ubuntu-server/

https://techviewleo.com/install-puppet-server-and-agent-on-debian/

https://www.reddit.com/r/devops/comments/oa5lnk/could_not_request_certificate_execution_expired/

https://bugzilla.redhat.com/show_bug.cgi?id=1470119

https://stackoverflow.com/questions/37335/how-to-deal-with-java-lang-outofmemoryerror-java-heap-space-error

https://stackoverflow.com/questions/33244767/command-to-completely-uninstall-puppet-in-the-agent

gem install r10k

mkdir /etc/puppetlabs/r10k

nano /etc/puppetlabs/r10k/r10k.yaml

r10k deploy environment -p

puppet agent -t

puppetserver ca sign --all (puppetserver ca list)
