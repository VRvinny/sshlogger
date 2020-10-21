#!/bin/bash

touch usernames.txt
touch ipaddrs.txt

#get the usernames and ip addresses from /var/log/auth.log
users=$(cat /var/log/auth.log | grep "sshd" | grep "$(date +"%b %d")" | grep "Invalid" | sed -n "s/^.*user\s*\(\S*\).*$/\1/p")

cat /var/log/auth.log | grep "sshd" | grep "$(date +"%b %d")" | grep "Invalid" | sed -n "s/^.*from\s*\(\S*\).*$/\1/p" >> ipaddrs.txt

# only add unique usernames to file
for line in $(echo "$users" | sed -e 's/ /\n/g'); do grep -q $line usernames.txt || echo $line >> usernames.txt; done 
