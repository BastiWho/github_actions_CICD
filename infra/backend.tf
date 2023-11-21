terraform {
  backend "s3" {
    bucket = "{{ secrets.TFSTATE_BUCKET_NAME }}"
    key    = "{{ secrets.TFSTATE_KEY }}"
    region = "eu-central-1"
  }
}
