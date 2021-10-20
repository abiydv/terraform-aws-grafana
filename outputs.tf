output "notification_channel_uid" {
  value = grafana_alert_notification.sns.uid
}

output "dashboards_list" {
  value = {for k,v in grafana_dashboard.this: k => {for i,j in v: i => j if i != "config_json"}}
}
