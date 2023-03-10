#!/bin/bash

source auth/.env
openstack stack update -t $1 $2
sleep 20
openstack stack show $2 | grep -E 'stack_status|security_groups|output'
