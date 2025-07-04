resource "grafana_dashboard" "elasticsearch" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/elasticsearch", "*.json")
  config_json = file("${path.module}/dashboards/elasticsearch/${each.key}")
  folder      = grafana_folder.ElasticSearch.id
}

resource "grafana_dashboard" "influxdb" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/influxdb", "*.json")
  config_json = file("${path.module}/dashboards/influxdb/${each.key}")
  folder      = grafana_folder.InfluxDB.id
}

resource "grafana_dashboard" "aws" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/aws", "*.json")
  config_json = file("${path.module}/dashboards/aws/${each.key}")
  folder      = grafana_folder.AWS.id
}

resource "grafana_dashboard" "couchbase" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/couchbase", "*.json")
  config_json = file("${path.module}/dashboards/couchbase/${each.key}")
  folder      = grafana_folder.Couchbase.id
}

resource "grafana_dashboard" "mysql" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/mysql", "*.json")
  config_json = file("${path.module}/dashboards/mysql/${each.key}")
  folder      = grafana_folder.MySQL.id
}

resource "grafana_dashboard" "kafka" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/kafka", "*.json")
  config_json = file("${path.module}/dashboards/kafka/${each.key}")
  folder      = grafana_folder.Kafka.id
}