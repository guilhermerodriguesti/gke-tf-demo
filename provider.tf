provider "google" {
  credentials = file(var.credentials_file_path)
  project     = "playground-s-11-0ed5fe29"
  region      = var.region
  zone        = var.region_zone
}
