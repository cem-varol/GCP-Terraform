provider "google" {
  credentials = file("key.json")
  project     = "ninth-goal-462610-t8"
  region      = "us-central1"
  zone        = "us-central1-a"
}
