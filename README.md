puppet
======

Puppet skeleton for future use.

Bootstrap
---------

Run as sudo initially when you are setting up a new instance:

```
apt-get install git
git clone https://github.com/RichardKnop/puppet.git /usr/local/puppet
bash /usr/local/puppet/scripts/bootstrap.sh
```

Then you can either:

1. set up a fully qualified domain name
2. Or edit the certname in puppet.conf

Setting Up Fully Qualified Domain Name
--------------------------------------

Let's say the hostname will be:

```
foo.staging.something.net
```

Edit /etc/hosts file:

```
#/etc/hosts
127.0.0.1 foo.staging.something.net foo localhost

# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
```

Edit /etc/hostname file:

```
#/etc/hostname
foo.staging.something.net
```

Change the current hostname (so you don't have to restart the instance:

```
sudo hostname foo.staging.something.net
```

Editing Certname
----------------

This will be done when you run:

```
cd /usr/local/puppet
sudo bash scripts/deploy.sh foo.staging.something.net
```

The bash script will copy puppet.conf.example into puppet.conf and replace ${certname} placeholder.

You can also optionally use second parameter specifying branch of this repo to be used. For example:

```
cd /usr/local/puppet
sudo bash scripts/deploy.sh foo.dev.something.net develop
```

Will use develop branch.

Applying Puppet Manifests
-------------------------

```
cd /usr/local/puppet
sudo puppet apply manifests/
```
