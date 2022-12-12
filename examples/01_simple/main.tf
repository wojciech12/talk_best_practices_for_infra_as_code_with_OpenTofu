provider "github" {
  owner = "wojciech12"
}

resource "github_repository" "my_repo" {
  name        = "tf_example"
  description = "My awesome TF repository"

  visibility = "public"
}
