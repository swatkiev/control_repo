# control_repo

# Puppet test

https://www.heyvaldemar.net/ustanovka-puppet-na-ubuntu-server/

https://techviewleo.com/install-puppet-server-and-agent-on-debian/

https://www.reddit.com/r/devops/comments/oa5lnk/could_not_request_certificate_execution_expired/

https://bugzilla.redhat.com/show_bug.cgi?id=1470119

https://stackoverflow.com/questions/37335/how-to-deal-with-java-lang-outofmemoryerror-java-heap-space-error

https://stackoverflow.com/questions/33244767/command-to-completely-uninstall-puppet-in-the-agent

- wget https://apt.puppetlabs.com/puppet7-release-bionic.deb

- sudo dpkg -i puppet7-release-bionic.deb

- sudo apt update & sudo apt install -y puppetserver

- add puppet to secure_path

sudo visudo

find "secure_path" and add ":/opt/puppetlabs/bin" to the end

- add puppet to PATH

sudo nano /etc/environment

find "PATH" and add ":/opt/puppetlabs/bin" to the end

- change puppetserver JAVA_ARGS (if needed)

sudo nano /etc/default/puppetserver

change 2GB use of RAM to some different (JAVA_ARGS="-Xms256m -Xmx512m -Djruby.logger.class=com.puppetlabs.jruby_utils.jruby.Slf4jLogger")

- add agent to /etc/puppetlabs/puppet/puppet.conf

[agent]

server = "your.hostname"

- gem install r10k

- mkdir /etc/puppetlabs/r10k

- nano /etc/puppetlabs/r10k/r10k.yaml

see example in repo

- r10k deploy environment -p

- puppet agent -t

- puppetserver ca sign --all (puppetserver ca list)
