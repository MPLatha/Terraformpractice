variable "ibmcloud_api_key" {
  description = "IBM Cloud API key"
  type        = string
}

variable "user_list" {
  type = list(object({
    name   = string
    email  = string
    apikey = string
  }))

  default = [
    {
      name   = "user-1"
      email  = "user1@domain.com"
      apikey = "apikey-1"
    },
  ]

  validation {
    condition     = length(var.user_list) <= 30
    error_message = "Automation supports ony 30 users for provisioning."
  }
}


variable "image" {
  description = "Image ID for the instance"
  type        = string
  default     = "ibm-redhat-7-9-minimal-amd64-3"
}

variable "create_vsi" {
  description = "True to create new VSI for VPC. False if VPC is already existing and subnets or address prefixies are to be added"
  type        = bool
  default     = "false"
}

variable "profile" {
  description = "Profile type for the Instance"
  type        = string
  default     = "latha"
}