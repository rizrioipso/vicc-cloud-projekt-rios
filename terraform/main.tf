provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_worker_script" "worker" {
  account_id = var.account_id
  name       = var.worker_name

  content = file("${path.module}/../app/worker.js")

  module = true
}
