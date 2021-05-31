setup the vault file rhn.yml with the following vars: 

rhn_user: '[RHN_USERNAME]'
rhn_password: '[RHN_PASSOWRD]'
pool_id: '[POOL ID REFERRING TO OPENSTACK]'
stack_password: '[STACK USER PASSWORD]'

in order to generate the password for the stack user user for example the followin command: 
 $ mkpasswd --method=sha-512

proceed to the vault creation using the following 
ansible-vault create rhn.yml


