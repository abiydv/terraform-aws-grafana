name                      = "SomethingUseful"
type                      = "sns"
default                   = false
send_reminder             = false
disable_resolve_message   = false
reminder_frequency        = "15m"
settings                  = {
        authProvider = "authTypeDefault"
        autoResolve  = true
        httpMethod   = "POST"
        severity     = "critical"
        topic        = "<SNS_TOPIC_ARN>"
        uploadImage  = false
}

dashboard_source_directory = "dashboards"
