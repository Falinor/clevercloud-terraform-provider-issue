resource "clevercloud_nodejs" "api" {
  name               = "terraform-test"
  region             = var.region
  build_flavor       = "M"
  min_instance_count = 1
  max_instance_count = 1
  smallest_flavor    = "XS"
  biggest_flavor     = "XS"

  package_manager = "npm"

  deployment {
    repository = "https://github.com/Falinor/clevercloud-terraform-provider-issue"
    commit     = "main"
  }
}
