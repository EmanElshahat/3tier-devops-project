variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "eu-west-1"
}

variable "cluster_name" {
  type    = string
  default = "todo-eks-cluster"
}
