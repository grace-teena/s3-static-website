provider "aws" {

region = "ap-south-1"
}

module "s3-website" {
source = "../../modules/site"
bucket_name = "dev.teenajoseph-blog.tech"
}

output "website_endpoint" {
  value = module.s3-website.website_endpoint
}
