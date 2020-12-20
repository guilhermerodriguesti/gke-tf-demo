resource "google_container_cluster" "gke-cluster" {
  name               = "gr-gke-cluster"
  network            = "default"
  initial_node_count = 3
}
