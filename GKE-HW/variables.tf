variable "mb_hello_project_id" {
  description = "ID do projeto GCP para o hello-world da MercadoBitcoin"
  type        = string
}

variable "mb_hello_region" {
  description = "Região onde o cluster GKE será criado"
  type        = string
  default     = "us-central1"
}

variable "mb_hello_cluster_name" {
  description = "Nome do cluster GKE para o projeto hello-world"
  type        = string
  default     = "mb-hello-cluster"
}

variable "mb_hello_node_count" {
  description = "Quantidade de nós no node pool"
  type        = number
  default     = 3
}

variable "mb_hello_machine_type" {
  description = "Tipo de máquina dos nós do cluster"
  type        = string
  default     = "e2-medium"
}
