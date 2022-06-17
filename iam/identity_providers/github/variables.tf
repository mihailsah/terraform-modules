variable "thumbprint_list" {
  description = "(Optional) A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s)."
  type        = list(string)
  default     = ["6938fd4d98bab03faadb97b34396831e3780aea1"]
}

variable "name" {
  type = string
}

variable "subject_claims" {
  type = list(string)
}

variable "oidc_provider_arn" {
  type = string
}

variable "policy" {
  type = string
}