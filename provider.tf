variable "path" { default = "/certsandkeys"  }

provider "google" {
    project = "devops-259311"
    region = "asia-south1-c"
    credentials = file("${var.path}/service_account_devops.json")
}