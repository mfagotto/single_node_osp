#!/bin/bash
ansible-playbook --limit=kvmhost,osp virt-infra.yml -e "virt_infra_state=undefined" --ask-become-pass
