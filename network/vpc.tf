# VPC (Virtual Private Cloud)
resource "aws_vpc" "example" {
  # cider_block: あとから変更できない
  # VPC ピアリング (Name タグのないVPC) など考慮して設計
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-training"
  }
}