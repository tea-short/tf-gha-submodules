locals {

  application = "tf-gha"
  env         = terraform.workspace == "default" ? "dev" : terraform.workspace

  region = data.aws_region.current.name

  gha_user_name = "gha"

  tags = {
    application = local.application
    environment = local.env
  }
}
