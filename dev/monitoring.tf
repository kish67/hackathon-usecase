resource "google_monitoring_dashboard" "dev_dashboard" {
  dashboard_json = <<EOT
{
  "displayName": "Dev Environment Dashboard",
  "gridLayout": {
    "columns": 2,
    "widgets": [
      {
        "title": "CPU Usage",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"compute.googleapis.com/instance/cpu/utilization\""
                }
              }
            }
          ]
        }
      }
    ]
  }
}
EOT
}
