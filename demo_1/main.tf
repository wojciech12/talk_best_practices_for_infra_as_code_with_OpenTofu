provider "github" {
  owner = "wojciech12"
}

variable "repository_name" {
  type    = string
  default = "my_app"
}

resource "github_repository" "my_repo" {
  name        = var.repository_name
  description = "My Azure App repository created by OpenTofu!"

  visibility = "public"
}
