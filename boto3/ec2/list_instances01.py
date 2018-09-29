#!/usr/bin/env python

import boto3

ec2 = boto3.resource('ec2')
for instance in ec2.instances.all():
    if instance.tags is None:
        print "Name: None ID: %s" % (instance.id,)
        continue
    for tag in instance.tags:
        if tag['Key'] == 'Name':
            print "Name: %s ID: %s" % (tag['Value'], instance.id,)
