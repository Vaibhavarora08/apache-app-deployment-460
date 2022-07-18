# Apache-app-deployment-460

The Repo contains the terraform code to provision infrastructure on AWS.
It also contains a Dockerfile to build an apache image as per the client requirment.

## Image build

To create your docker image run the below command :-
docker build -t apache:v1 .

## Push image to ECR

To push the image to ecr, follow the below steps:-
a. Tag image as per your aws account name using the command
 
    docker tag apache:v1 aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag

b. Push the image using push docker image command
    
    docker push aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag