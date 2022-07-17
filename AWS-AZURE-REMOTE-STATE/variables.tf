variable "location" {
  description = "variavel que indica região onde os recusos vão ser criados"
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "Tier da sorege account na azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da storege account"
  type        = string
  default     = "LRS"
}

