terraform {
  backend "gcs" {
    bucket      = "terraform-gr-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
