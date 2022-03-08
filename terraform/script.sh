temp_role=$(aws sts assume-role --role-arn $1 --role-session-name AWS_ROLE_TO_ASSUME)
export AWS_ACCESS_KEY_ID=$(echo $temp_role | jq -r .Credentials.AccessKeyId)
export AWS_SECRET_ACCESS_KEY=$(echo $temp_role | jq -r .Credentials.SecretAccessKey)
export AWS_SESSION_TOKEN=$(echo $temp_role | jq -r .Credentials.SessionToken)
echo "Current Assume role is:" && aws sts get-caller-identity > /tmp/roles.txt
terraform init
terraform apply -auto-approve
