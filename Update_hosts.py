#!/usr/bin/env python
# filename: Update_hosts.py
# coding: utf-8
# author: joker

import urllib2
import re
import sys
import os
import time

url = "https://raw.githubusercontent.com/racaljk/hosts/master/hosts"
request = urllib2.Request(url)
raw_hosts = urllib2.urlopen(request).read()

date = time.strftime('%Y-%m-%d',time.localtime(time.time()))

print "Update your hosts file start..."

f = file('/etc/hosts', 'w+')
f.writelines(raw_hosts)
f.close()

print "Update success!"
print "The hosts date is %s." % raw_hosts[87:97]
