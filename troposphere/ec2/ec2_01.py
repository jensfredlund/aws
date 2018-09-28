#!/usr/bin/env python3
#
# learncf_ec2.py
#
# Generate a CloudFormation template that creates an EC2 instance in a
# subnet which was created previously by another template (learncf-subnet)
#
from __future__ import print_function

from troposphere import ec2
from troposphere import Tags, ImportValue
from troposphere import Template

# create the object that will generate our template
t = Template()

ec2_learncf_1a = ec2.Instance("ec2LearnCf1a")
ec2_learncf_1a.ImageId = "ami-e487179d"                 # ADJUST IF NEEDED
ec2_learncf_1a.InstanceType = "t2.micro"
# We set the subnet to start this instance in by importing the subnet ID
# from the other CloudFormation stack, which previously created it.
# An example of cross-stack reference used to split stacks into
# manageable pieces. Each export must have a unique name in its account
# and region, so the template name was prepended to the resource name.
ec2_learncf_1a.SubnetId = ImportValue("learncf-subnet-netLearnCf1a")
ec2_learncf_1a.Tags = Tags(
        Name="learncf",
        Comment="Learning CloudFormation and Troposphere")

t.add_resource(ec2_learncf_1a)

# Finally, write the template to a file
with open('learncf-ec2.yaml', 'w') as f:
    f.write(t.to_yaml())
