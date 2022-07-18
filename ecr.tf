# ecr.tf | Elastic Container Repository

resource "aws_ecr_repository" "aws-ecr" {
  name = "apache-test-ecr"
  tags = {
    Name        = "apache-ecr"
    Environment = "test"
  }
}
