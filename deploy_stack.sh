


cd templates
aws s3 sync . s3://$2
aws s3 ls s3://$2

aws cloudformation create-stack --stack-name $1 --template-url https://s3.amazonaws.com/$2/$3 --parameters https://s3.amazonaws.com/$2/$4 --capabilities CAPABILITY_IAM
