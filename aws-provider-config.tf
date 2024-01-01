provider "aws" {
  shared_config_files = ["home/centos/.aws/conf"]
  shared_credentials_files = ["home/centos/.aws/cred"]
  profile = ""
}

terraform {
  required_version = ">~3."
}

output "public_ip" {
 value = "https://${aws_instance.ec2.public}:8080"

}
//list with string
variable "name" {
  type = list(string)
  default = ["name", "class", "age"]
}

//map with string
variable "name2" {
  type= map(string)
  default = {
    age= "four"
    name = "terraform"
  }
}

//object
variable "name3" {
  type = object({
    name = string
    age = number
    agree = yes
  })

  default = ({
    name ="john"
    age = 70
    agree = yes

  })
}

//tuple
variable "name4" {
  type=tuple(["string","number","bool"])
  default = (["name", 80 , yes])
}
//set
variable "name5" {
  type= set(string)
  default = ["name", "age", "number"]
}
resource "aws_rds_cluster" "one" {
lifecycle {
  prevent_destroy = true
  create_before_destroy = alltrue()
  ignore_changes = [alltrue()]


}
}

variable "name6" {
  type = zip
}

