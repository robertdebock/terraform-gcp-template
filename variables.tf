variable "username" {
  description = "Please specify a username to create on the instance."
  default     = "my_user"
  validation {
    condition     = length(var.username) >= 3 && length(var.username) <= 10 && var.username != "root"
    error_message = "The username needs to be 3 or more characters, but to 10 and can't be \"root\"."
  }
}

variable "key_file" {
  description = "Please specify the filename that contains the SSH public key."
  default     = "id_rsa.pub"
  validation {
    condition     = fileexists(var.key_file)
    error_message = "The file does not exist. Please create is with \"ssh-keygen -f id_rsa\"."
  }
}
