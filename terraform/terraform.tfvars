aws_region = "ap-south-1"
#aws_access_key    = "aws_access_key"
#aws_secret_key    = "aws_secret_key"
aws_key_pair_name  = "dharani_oracle_on_ec2"
availability_zones = ["ap-south-1a", "ap-south-1b"]
public_subnets     = ["10.10.100.0/24", "10.10.101.0/24"]
private_subnets    = ["10.10.0.0/24", "10.10.1.0/24"]
app_name           = "apache-app"
app_environment    = "test"