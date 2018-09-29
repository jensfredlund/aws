# Boto3

### Installation
```
$ sudo apt install python-pip
```

```
$ pip install boto3
```

### Configuration
Configure credentials (in e.g. ~/.aws/credentials):
```
[default]
aws_access_key_id = YOUR_KEY
aws_secret_access_key = YOUR_SECRET
```

Then, set up a default region (in e.g. ~/.aws/config):
```
[default]
region=us-east-1
```

### Boto3 documentation for each AWS service
https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/index.html

### Interfaces
Client:

    low-level service access
    generated from service description
    exposes botocore client to the developer
    typically maps 1:1 with the service API
    snake-cased method names (e.g. ListBuckets API => list_buckets method)

Resource:


    higher-level, object-oriented API
    generated from resource description
    uses identifiers and attributes
    has actions (operations on resources)
    exposes subresources and collections


Session:


    stores configuration information (primarily credentials and selected region)
    allows you to create service clients and resources
