variable "name" {
  type = string
}
variable "type" {
  type    = string
  default = "sns"
}
variable "default" {
  type    = bool
  default = false
}
variable "send_reminder" {
  type    = bool
  default = false
}
variable "disable_resolve_message" {
  type    = bool
  default = false
}
variable "reminder_frequency" {
  type    = string
  default = "15m"
}
variable "settings" {
  type    = map(any)
  default = {}
}
variable "secure_settings" {
  type    = map(any)
  default = {}
}

variable "dashboard_source_directory" {
  type = string
}
