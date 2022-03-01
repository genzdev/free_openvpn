module "terraform_state_backend" {
  source            = "cloudposse/tfstate-backend/aws"
  version           = "0.9.0"
  namespace         = var.namespace
  stage             = "prod"
  name              = var.name
  region            = var.server_region[terraform.workspace]
  terraform_version = "0.12.29"
}