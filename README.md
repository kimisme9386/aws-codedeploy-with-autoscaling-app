[![Build Status](https://travis-ci.com/kimisme9386/aws-codedeploy-with-autoscaling-app.svg?branch=master)](https://travis-ci.com/kimisme9386/aws-codedeploy-with-autoscaling-app)

The repository is application revisions for AWS CodeDeploy.

## Preparation

AWS CodeDeploy infrastructure refer to [aws-codedeploy-with-autoscaling-infra](https://github.com/kimisme9386/aws-codedeploy-with-autoscaling-infra)

After build success for AWS CodeDeploy infrastructure, AWS CodeDeploy Deployment can continue.

## Build on Travis CI

#### Find out deployment bucket name and Travis CI IAM user

Copy value within cloudformation stack Outputs tab in the AWS Management Console.

Two key name is below

- DeploymentBucketName
- TravisCIUserCodedeployApp

#### Create access key for IAM user

After find out IAM user name for Travis CI in the previous step, create access key In the Access keys section.

When getting the access_key_id and secret_access_key, install Travis CLI and encrypt them. Refer to [Travis CI document](https://docs.travis-ci.com/user/encryption-keys/#usage).   

#### Modify travis.yml

 - The value of deploy.bucket replace with the value of DeploymentBucketName on travis.yml file.
 
 - The value of deploy.provider.access_key_id replace with the value of encryption access_key_id on travis.yml file.
 
 - The value of deploy.provider.secret_access_key replace with the value of encryption secret_access_key on travis.yml file.

#### Check Result

After travis build pass, check deployment status of CodeDeploy in the AWS Management Console.

Connection to EC2 on SSM session Manager and curl http://127.0.0.1:8000 on linux command line. It will be shown lumen framework version. if see the lumen version, the CodeDeploy is success.
