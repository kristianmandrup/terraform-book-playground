variable "access_key" {
  type = string
  description = "AWS access key"
}

variable "secret_key" {
  type = string
  description = "AWS secret key"
}

variable "region" {
  type = string
  description = "us-east-1"
}

variable "region_list" {
  type = list(string)
  description = "AWS availability zones"
  default = ["us-east-1a", "us-east-1b"]
}

variable "security_group_ids" {
  type = list(string)
  description = "Security group IDs"
  default = ["sg-4f713c35", "sg-4f713c35", "sg-4f713c35"]
}

variable "ami" {
  type = map(string)
  default = {
    us-east-1 = "ami-0d729a60"
    us-west-1 = "ami-7c4b331c"
  }
  description = "The AMIs to use"
}