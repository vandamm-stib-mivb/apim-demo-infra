variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = ""
}
variable "app_location" {
  type        = string
  description = "The location or region where the application should reside"
  default     = "West Europe"
}
variable "app_tags" {
  type        = map(string)
  description = "The tags that should be added to the application"
  default     = {
    Client  = "Devoteam",
    Project = "Demo",
    Owner   = "Michelangelo van Dam"
  }
}
variable "app_service_plan_name" {
  type        = string
  description = "The name for the service plan used by the app service"
  default     = ""
}
variable "app_service_plan_os_type" {
  type        = string
  description = "The type of OS for the service plan used by the app service"
  default     = "Linux"
}
variable "app_service_plan_sku" {
  type        = string
  description = "The SKU for the service plan used by the app service"
  default     = "F1"
}
variable "app_service_name" {
  type        = string
  description = "The name for the app service"
  default     = ""
}
variable "always_on" {
  type        = bool
  description = "Should the app service be always on?"
  default     = false
}
variable "https_only" {
  type        = bool
  description = "Should the app service be served over HTTPS only?"
  default     = true
}
variable "app_command_line" {
  type        = string
  description = "What command should be executed at launch"
  default     = ""
}
variable "current_stack" {
  type        = string
  description = "Which technology stack are we using in the application"
  default     = "php"
}
variable "php_version" {
  type        = string
  description = "The PHP version for the app service"
  default     = "8.0"
}
variable "default_document_list" {
  type        = list(string)
  description = "List of default documents"
  default     = ["index.php"]
}
variable "health_check_path" {
  type        = string
  description = "The path to check the health of the application"
  default     = "/ping"
}
variable "http2_enabled" {
  type        = bool
  description = "Should HTTP/2 be enabled"
  default     = true
}