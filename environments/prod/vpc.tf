
module "vpc" {
  source = "../../modules/aws/network/vpc"

  name = "${var.environment}"

  cidr = "10.30.0.0/16"


  tags = {
    Owner       = "user"
    Environment = "${var.environment}"
    Scope = "nifi-infra"
  }
}
