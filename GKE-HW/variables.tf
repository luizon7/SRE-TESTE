variable "mb_hello_project_id" {
  description = "ID do projeto GCP MercadoBitcoin"
  type        = string
}

variable "mb_hello_region" {
  description = "Região do cluster GKE"
  type        = string
  default     = "us-central1"
}

variable "mb_hello_cluster_name" {
  description = "Nome do cluster GKE"
  type        = string
  default     = "mb-hello-cluster"
}

variable "mb_hello_node_count" {
  description = "Quantidade de nós"
  type        = number
  default     = 1
}

variable "mb_hello_machine_type" {
  description = "Tipo de máquina do cluster"
  type        = string
  default     = "e2-micro"
}
