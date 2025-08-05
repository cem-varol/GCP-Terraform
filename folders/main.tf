resource "google_storage_bucket" "my-bucket" {
  name          = "ci_cd_bucket_terraform"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"
}
