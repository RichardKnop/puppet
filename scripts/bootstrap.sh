#!/bin/bash

# Needed so that the aptitude/apt-get operations will not be interactive
DEBIAN_FRONTEND=noninteractive

wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
apt-get update
apt-get -y upgrade

aptitude -fy install puppet=3.6.1