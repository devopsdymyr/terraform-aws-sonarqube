# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "db_subnet_ids" {
  type        = "list"
  description = "A list of IDs of the subnets to deploy the service into"
}

variable "cluster_id" {
  description = "The ID of the cluster into which this service will be lauched"
}

variable "cluster_role_name" {
  description = "The name of the Role given to the cluster"
}

variable "cluster_security_group_id" {
  description = "The ID of the security group assigned to the cluster"
}

variable "loadbalancer_arn" {
  description = "The ARN for the ALB that the service should attach to"
}

variable "loadbalancer_dns_name" {
  description = "The DNS name of the ALB"
}

variable "name_prefix" {
  description = "A prefix used for naming resources."
}

variable "parameters_key_arn" {
  description = "The ARN of the kms key used to encrypt the parameters"
}

variable "route53_zone_name" {
  description = "The name of the route53 zone that this service should be registered in"
}

variable "vpc_id" {
  description = "The VPC ID"
}

variable "snapshot_identifier" {
  description = "The identifier of the snapshot to create the database from - if left empty a new db will be created"
  default     = ""
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = "map"
  default     = {}
}
