#!/bin/bash

# CREATE INFRA
ansible-playbook --limit=kvmhost,osp virt-infra.yml --ask-become-pass

# DEPLOY
ansible-playbook osp.yml --ask-vault-pass


