# Some commands in Vagrant

vagrant init "new_local_box_name" or from vagrant cloud (ubuntu/bionic)

vagrant up (with --provision parameter)

vagrant box list

vagrant ssh name_of_box

vagrant port name_of_box

vagrant global-status

vagrant status name_of_box

vagrant suspend name_of_box

vagrant resume name_of_box

vagrant reload name_of_box

vagrant snapshot save name_of_snapshot

vagrant snapshot list

vagrant snapshot restore name_of_snapshot (with --no-provision parameter)

vagrant halt name_of_box

vagrant destroy name_of_box

vagrant package --vagrantfile vagrant_file/Vagrantfile --output "your_local_box_name.box"

vagrant add "new_local_box_name" "your_local_box_name.box"
