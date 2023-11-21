terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "{{ secrets.TFSTATE_BUCKET_NAME }}"
    key    = "{{ secrets.TFSTATE_KEY }}"
    region = var.aws_region
  }
}
