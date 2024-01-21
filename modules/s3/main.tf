resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket" "bu_wp_contents" {
  bucket = "${var.name}-${random_string.random.result}"

  tags = {
    Name = "WP Content"
  }
}