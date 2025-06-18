variable "ec2_names" {
  type = list(string)
  default = ["mysql", "backend", "frontend"]
}


variable "zone_id" {
  
}

variable "zone_name" {
  
}

variable "commontags" {
  default = {
    Project     = "expence"
    environment = "dev"
    Owner = "Naveen Rajoli"
  }
}

variable "environment" {

}

variable "project" {
  default = "expense"
}