
module "vpc" {
  source = "../../modules/aws/network/vpc"

  name = "${var.environment}"

  cidr = "10.20.0.0/16"


  tags = {
    Owner       = "user"
    Environment = "${var.environment}"
    Scope = "nifi-infra"
  }
}
