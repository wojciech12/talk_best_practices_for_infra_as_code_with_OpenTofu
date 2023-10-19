variables {
  repository_name = "test_my_app"
}

run "check repo name" {

  command = plan

  assert {
    condition     = github_repository.my_repo.name == "test_my_app"
    error_message = "github repo name did not match expected"
  }
}
