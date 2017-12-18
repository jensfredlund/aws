# AWS cli configuration for one admin account with delegated IAM acces to multiple accounts dev, stage, prod
```
aws ec2 describe-instances --profile stage
```

It is also possible to switch role from the admin account in the AWS console and jump to the stage environment without sign out and in to the other account
