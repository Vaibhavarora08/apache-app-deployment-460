## Terraform code to implement the infrastructure Provisioning on AWS

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |
| template | n/a |

## Resources
| Name |
|------|
| [aws_alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb) |
| [aws_appautoscaling_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) |
| [aws_appautoscaling_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) |
| [aws_cloudwatch_log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) |
| [aws_ecr_repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) |
| [aws_ecs_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) |
| [aws_ecs_service](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) |
| [aws_ecs_task_definition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ecs_task_definition) |
| [aws_ecs_task_definition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) |
| [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) |
| [aws_internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) |
| [aws_lb_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) |
| [aws_lb_target_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) |
| [aws_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) |
| [aws_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) |
| [aws_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) |
| [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) |
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) |
| [template_file](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| app\_environment | Application Environment | `string` | n/a | yes |
| app\_name | Application Name | `string` | n/a | yes |
| availability\_zones | List of availability zones | `any` | n/a | yes |
| aws\_access\_key | AWS Access Key | `string` | n/a | yes |
| aws\_cloudwatch\_retention\_in\_days | AWS CloudWatch Logs Retention in Days | `number` | `1` | no |
| aws\_key\_pair\_name | AWS Key Pair Name | `string` | n/a | yes |
| aws\_region | AWS Region | `string` | n/a | yes |
| aws\_secret\_key | AWS Secret Key | `string` | n/a | yes |
| cidr | The CIDR block for the VPC. | `string` | `"10.0.0.0/16"` | no |
| private\_subnets | List of private subnets | `any` | n/a | yes |
| public\_subnets | List of public subnets | `any` | n/a | yes |
| state\_bucket | The bucket to store the Terraform state file | `string` | n/a | yes |

## Prerequisites

* Ensure that docker image is present in ECR repository.
* Ensure you have Terraform installed on the server from where you running the commands.
* Make sure the server has aws access to create the required resources.