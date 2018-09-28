alias awsprod='awsoff ; eval $(assume-role prod) ; echo ; aws iam list-account-aliases;'
alias awsstage='awsoff ; eval $(assume-role stage) ; echo ; aws iam list-account-aliases;'
alias awsdev='awsoff ; eval $(assume-role dev) ; echo ; aws iam list-account-aliases;'
alias awsoff='unset AWS_SECRET_ACCESS_KEY; unset AWS_SECURITY_TOKEN; unset AWS_SESSION_TOKEN'
