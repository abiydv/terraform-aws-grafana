locals {
  dasboards_list = fileset("${var.dashboard_source_directory}/", "*.json")
}

resource "grafana_alert_notification" "sns" {
  name                    = var.name
  type                    = var.type
  is_default              = var.default
  send_reminder           = var.send_reminder
  disable_resolve_message = var.disable_resolve_message
  frequency               = var.reminder_frequency
  secure_settings         = var.secure_settings
  settings                = var.settings
}

resource "grafana_dashboard" "this" {
  for_each    = toset(local.dasboards_list)
  config_json = templatefile(format("%s/%s", var.dashboard_source_directory, each.key), {alert_uid = grafana_alert_notification.sns.uid})
}
