resource "google_monitoring_dashboard" "dev_dashboard" {
  dashboard_json = <<EOT
{
  "displayName": "Dev Environment Dashboard",
  "gridLayout": {
    "columns": 2,
    "widgets": [
      {
        "title": "Application Frontend CPU Usage",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=\"applicationfrontend\""
                }
              }
            }
          ]
        }
      },
      {
        "title": "Patient Frontend CPU Usage",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=\"patientfrontend\""
                }
              }
            }
          ]
        }
      },
      {
        "title": "Order Backend CPU Usage",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=\"orderbackend\""
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

