# Openstack All-in-One lab installation on libvirtd

## Description 
This project provides a basic tool to create and install openstack on a single VM as described here:

https://access.redhat.com/documentation/en-us/red_hat_openstack_platform/16.1/html/standalone_deployment_guide/index

Given a box, RHN access and a poolid providing access to openstack repositories it should install a ready-to-use lab. 

## Prerequisites
Ansible 2.9+ must be installed on the system.

### Vault file
setup the vault file rhn.yml with the following vars: 
`rhn_user: '[RHN_USERNAME]'  
rhn_password: '[RHN_PASSOWRD]'  
pool_id: '[POOL ID REFERRING TO OPENSTACK]'  
stack_password: '[STACK USER PASSWORD]'  
`  
in order to generate the password for the stack user user for example the following command: 
`mkpasswd --method=sha-512`  
  
proceed to the vault creation using the following  
`ansible-vault create rhn.yml`  
  
as an alternative, the `rhn.yml.sample` can be used as a draft 

# CUSTOMIZE
inventory/kvmhost.yml: set newtworks names and ranges
inventory/osp.yml: set hostname, cpu disk, 

# DEPLOY
./install.sh

# DESTROY
ansible-playbook --limit=kvmhost,osp virt-infra.yml -e "virt_infra_state=undefined" --ask-become-pass


