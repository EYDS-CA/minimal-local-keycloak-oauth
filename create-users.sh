#!/bin/bash
cd /opt/jboss/keycloak/bin
./kcadm.sh config credentials --server http://localhost:8080/auth --user admin --password password --realm master
./kcadm.sh create users -r echo -s username=test -s enabled=true -s email=test@freshworks.io -s emailVerified=true
./kcadm.sh set-password -r echo --username test --new-password password
