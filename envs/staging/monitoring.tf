resource "google_monitoring_dashboard" "staging_dashboard" {
  dashboard_json = <<EOT
{
  "displayName": "Staging Environment Dashboard",
  "gridLayout": {
    "columns": 2,
    "widgets": [
      {
        "title": "Application Frontend CPU Usage (Staging)",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=\"applicationfrontend\" AND resource.label.\"cluster_name\"=\"staging-gke-cluster\""
                }
              }
            }
          ]
        }
      },
      {
        "title": "Patient Frontend CPU Usage (Staging)",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=\"patientfrontend\" AND resource.label.\"cluster_name\"=\"staging-gke-cluster\""
                }
              }
            }
          ]
        }
      },
      {
        "title": "Order Backend CPU Usage (Staging)",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=\"orderbackend\" AND resource.label.\"cluster_name\"=\"staging-gke-cluster\""
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
