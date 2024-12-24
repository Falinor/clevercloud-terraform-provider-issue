variable "clevercloud_org" {
  description = "Clever Cloud Organisation ID"
  type        = string
}

variable "clevercloud_api_token" {
  description = "Clever Cloud API Token"
  type        = string
}

variable "clevercloud_api_secret" {
  description = "Clever Cloud API Secret"
  type        = string
}

variable "region" {
  description = "Région Clever Cloud"
  type        = string
  default     = "par" # Paris (Europe)
}
