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
