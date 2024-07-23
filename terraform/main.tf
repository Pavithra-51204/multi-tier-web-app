module "vpc" {
  source = "./vpc"
}

module "iam" {
  source = "./iam"
}

module "alb" {
  source = "./alb"
}

module "autoscaling" {
  source = "./autoscaling"
}
