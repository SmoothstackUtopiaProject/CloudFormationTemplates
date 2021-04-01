aws cloudformation deploy \
--stack-name $APPLICATION_NAME \
--template-file ./DeploymentTemplate.yml \
--parameter-overrides \
ApplicationName=$APPLICATION_NAME \
ECRepositoryUri=$AWS_ID/$APPLICATION_REPOSITORY:$COMMIT_HASH \
ExecutionRoleArn=$EXECUTION_ROLE_ARN \
DBUrl=$DB_URL \
DBUsername=$DB_USERNAME \
DBPassword=$DB_PASSWORD \
SubnetID=$SUBNET_ID \
SecurityGroupID=$SECURITY_GROUP_ID \
TargetGroupArnDev=$UTOPIA_PASSENGERMS_TARGETGROUP_DEV \
TargetGroupArnProd=$UTOPIA_PASSENGERMS_TARGETGROUP_PROD \
VpcId=$VPC_ID \
--capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"