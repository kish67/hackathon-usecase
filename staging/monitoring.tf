resource "google_monitoring_dashboard" "staging_dashboard" {
  dashboard_json = <<EOT
{
  "displayName": "Staging Environment Dashboard",
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
