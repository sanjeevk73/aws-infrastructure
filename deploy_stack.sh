


#cd templates
#aws s3 sync . s3://$2
#aws s3 ls s3://$2

aws cloudformation create-stack --region us-east-1 --stack-name $1 --template-body file://home/ec2-user/aws-infrastructure/templates/$2 --parameters ParameterKey=KeyName,ParameterValue=VS_EC2  --capabilities CAPABILITY_IAM
