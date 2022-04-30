variable "tags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."
  default = {
    source = "terraform"
  }
}

variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure location."
  type        = string
}

variable "app_service_plan_name" {
  description = "The name for the App service plan"
  type        = string
}

variable "add_to_app_service_environment" {
  description = "Whether or not this app service plan should be added to an app service environment"
  type        = bool
  default     = false
}

variable "app_service_environment_id" {
  description = "If an ASE is used, supply the ID to it here"
  type        = string
  default     = ""
}

variable "maximum_elastic_worker_count" {
  description = "If ElasticScaleEnabled app service plan is used, the max number of nodes"
  type        = number
  default     = null
}

variable "per_site_scaling" {
  description = "Should per site scaling be used?"
  type        = bool
  default     = false
}

variable "zone_redundant" {
  description = "Should the ASP be zone redundant?"
  type        = bool
  default     = false
}

variable "sku" {
  description = "A sku block. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#sku"
  type        = map(string)
}

variable "kind" {
  description = "The kind of the App Service Plan to create. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#kind"
  type        = string
}

variable "reserved" {
  description = "Flag indicating if App Service Plan should be reserved. Forced to true if \"kind\" is \"Linux\"."
  type        = string
  default     = "false"
}