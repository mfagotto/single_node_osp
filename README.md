# Openstack All-in-One lab installation on libvirtd

## Description 
This project provides a basic tool to create and install openstack on a single VM as described here:

https://access.redhat.com/documentation/en-us/red_hat_openstack_platform/16.1/html/standalone_deployment_guide/index

Given a box, RHN access and a poolid providing access to openstack repositories it should install a ready-to-use lab. 

## Prerequisites
Ansible 2.9+ must be installed on the system.
Red Hat Enterprise Linux 8.2 QCOW2 Image - rhel-8.2-x86_64-kvm.qcow2 - must be available in the default pool folder /var/lib/libvirt/images. This path may be customized adjusting the  following variable:
virt_infra_host_image_path: "/var/lib/libvirt/images"

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

## Customize
- inventory/kvmhost.yml: set newtworks names and ranges
- inventory/osp.yml: set hostname, cpu, ram, disks,  and NICs. consider that your system must have at least 4 CPUs, 8GB RAM, and 30GB disk space and two interfaces (default and management)

## Deploy
Execute the following script to install the lab:
./install.sh

## Destroy
Execute the following script to destroy the lab:
./destroy.sh


