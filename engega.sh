#! /bin/bash
docker run --rm --name ldap -h ldap --net ldapnet -d edtasixm06/ldapserver:18group
docker run --rm --name sshd1 -h sshd1 --net ldapnet -d edtasixm06/sshserver:18base
docker run --rm --name sshd2 -h sshd2 --net ldapnet -d edtasixm06/sshserver:18base
docker run --rm --name host -h host --net ldapnet -it edtasixm06/hostpam:18auth /bin/bash


