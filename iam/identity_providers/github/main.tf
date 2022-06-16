####################################
# Locals
####################################

locals {
  service_name = "${var.platform}-${var.project}-${local.environment}"
  tags = {
    platform    = var.platform
    project     = var.project
    environment = local.environment
    region      = var.region
    terraform   = "true"    
    code_repo   = var.code_repo
  }
  environment = terraform.workspace
}

####################################
# Resources
####################################

module "dev_deploy_role" {
  source = "./modules/role"
  name = "gh-oidc-dev-deploy-role"
  subject_claims = var.repo
  oidc_provider_arn = data.aws_iam_openid_connect_provider.github.arn
  policy = file("./policies/s3_role_permissions_policy.json")
}

# IAM
resource "aws_iam_openid_connect_provider" "github_actions" {
  url             = "https://token.actions.githubusercontent.com"
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = var.thumbprint_list
}
