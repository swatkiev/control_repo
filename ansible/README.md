# Ansible test

# install

sudo apt update

sudo apt install software-properties-common

sudo apt-add-repository --yes --update ppa:ansible/ansible

sudo apt install ansible

sudo apt install python3-pip

sudo pip3 install ansible

# command

ansible localhost -m ping

ansible localhost -m find -a "paths=/root file_type=file"

ansible-playbook manifest.yaml -v

myhosts - file with hosts (if not standart)

ansible-playbook manifest.yaml -i myhosts -v

ansible -i hosts.txt all -m ping

ansible remote_servers -m shell -a "uptime"

ansible remote_servers -m copy -a "src=test.txt dest=/root mode=777" -b

ansible remote_servers -m file -a "path=/root/test.txt state=absent" -b

ansible local_servers -m get_url -a "url=http://example.com/index.html dest=/root mode=777" -b

ansible local_servers -m uri -a "url=http://example.com/index.html return_content=yes"

ansible local_servers -m apt -a "name=stress state=installed" -b

ansible local_servers -m apt -a "name=stress state=removed" -b

ansible local_servers -m shell -a "ls -la /root/ansible" -vvv

ansible-inventory --list (--graph)

ansible-galaxy init "name of your role" (create folder roles before init --> mkdir -p roles)

ansible-playbook playbook_with_roles.yml --extra-var "MYHOSTS=remote_servers"

ansible-vault create "your secret file"

ansible-vault view "your secret file"

ansible-vault edit "your secret file"

ansible-vault rekey "your secret file"

ansible-vault encrypt "your secret file"

ansible-vault decrypt "your secret file"

ansible-playbook playbook_vault.yml --ask-vault-pass

ansible-playbook playbook_vault.yml --vault-password-file "file with password"

ansible-vault encrypt_string --stdin-name "name_of_string"

echo -n "your_secret_password" | ansible-vault encrypt_string

# playbook example (yaml):

---
  - name: "My first play"
    hosts: localhost
    
    tasks:
	
      - name: "test reachability"
	ping:
	      
      - name: "nginx install"
	apt:
	  name: nginx
	  state: present
	      
      - name: "find module"
        find:
	  path: /root
	  file_type: file


# for work with windows:

Save as ConfigureRemotingForAnsible.ps1 on your Windows and run in Powershell like Administrator:

https://github.com/ansible/ansible/blob/devel/examples/scripts/ConfigureRemotingForAnsible.ps1

Install pip and pywinrm on Ansible linux host:

apt install python-pip

pip install "pywinrm>=0.2.2"

# for work with AWS:

https://github.com/vshn/ansible-dynamic-inventory-ec2

https://docs.ansible.com/ansible/latest/collections/amazon/aws/docsite/aws_ec2_guide.html

https://docs.ansible.com/ansible/latest/inventory_guide/intro_dynamic_inventory.html

export AWS_ACCESS_KEY_ID='AK123'

export AWS_SECRET_ACCESS_KEY='abc123'

./ec2.py --list --refresh-cache

ansible -i ec2.py aws_servers -m ping (you can use tags from AWS instead of "aws_servers", like: us-west-1, tag_Env_PROD, tag_NAME_TEST)

ansible-playbook -i ec2.py playbook.yml (set in playbook hosts: "tags from AWS")

ansible-doc -l | grep ec2
