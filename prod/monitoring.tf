resource "google_monitoring_dashboard" "prod_dashboard" {
  dashboard_json = <<EOT
{
  "displayName": "Production Environment Dashboard",
  "gridLayout": {
    "columns": 2,
    "widgets": [
      {
        "title": "Application Frontend CPU Usage (Prod)",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=\"applicationfrontend\" AND resource.label.\"cluster_name\"=\"prod-gke-cluster\""
                }
              }
            }
          ]
        }
      },
      {
        "title": "Patient Frontend CPU Usage (Prod)",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=\"patientfrontend\" AND resource.label.\"cluster_name\"=\"prod-gke-cluster\""
                }
              }
            }
          ]
        }
      },
      {
        "title": "Order Backend CPU Usage (Prod)",
        "xyChart": {
          "dataSets": [
            {
              "timeSeriesQuery": {
                "timeSeriesFilter": {
                  "filter": "metric.type=\"kubernetes.io/container/cpu/utilization\" AND resource.type=\"k8s_container\" AND resource.label.\"
