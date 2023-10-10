
variable "resource_group_names" {
  type = list(string)
  # default =  see terraform.tfvars file  
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  #default     = "Australia East" # Change this to your desired Azure region
}