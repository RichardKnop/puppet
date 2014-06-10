#!/bin/bash

CERTNAME=$1

if [ -n "$2" ]
then
	BRANCH=$2
else
	BRANCH="master"
fi

cd /usr/local/puppet
git checkout $BRANCH
git pull origin $BRANCH
sed -e "s/\${certname}/$CERTNAME/" puppet.conf.example > puppet.conf

puppet apply manifests/