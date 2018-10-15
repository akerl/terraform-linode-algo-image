variable "algo_repo" {
  type        = "string"
  default     = "https://github.com/akerl/algo"
  description = "Repo to use for Algo code"
}

variable "ssh_keys" {
  type        = "list"
  description = "SSH public keys used to log in as root to the server"
}
