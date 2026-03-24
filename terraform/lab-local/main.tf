terraform {
  required_providers {
    local = {
      source  = "hashicorp/local" # TODO 1 : Source officielle [cite: 83, 95]
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "novasphere_welcome" {
  content  = "Bienvenue chez NovaSphere ! Infrastructure as Code v1.0" # TODO 2 [cite: 90, 91]
  filename = "${path.module}/welcome.txt"
}
