provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

locals {
  route_host = "${var.worker_name}.${var.workers_subdomain}.workers.dev"
}

# Route: <worker>.<account>.workers.dev/* -> Worker Script
resource "cloudflare_worker_route" "workers_dev_route" {
  zone_id     = "workers.dev"
  pattern     = "${local.route_host}/*"
  script_name = var.worker_name
}
