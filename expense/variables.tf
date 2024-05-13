

variable "instance_names" {

    type = list
    default = ["db","backend","frontend"]
}

variable "image_id" {
  type        = string #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}
 

variable "common_tags" {
    default = { 
        project = "Expense"
        Environment = "Dev"
       Terraform = "true"
    }
}



variable "zone_id" {
    
    default = "Z01123351V487ATM4PNJO"
}

variable "domain_name" {
    default = "expensedevops.click"
}




variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}
