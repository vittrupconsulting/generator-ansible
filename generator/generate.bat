vagrant up --provider virtualbox

vagrant package --output ansible_slave.box slave
vagrant box remove ansible/slave
vagrant box add ansible/slave ansible_slave.box
del ansible_slave.box

vagrant package --output ansible_master.box master
vagrant box remove ansible/master
vagrant box add ansible/master ansible_master.box
del ansible_master.box

vagrant destroy --force