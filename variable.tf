variable "elastic_cluster_name" {}
variable "elastic_cache_apply_immediate_bool" {
    default = false
}
variable "elastic_cache_availability_zone" {
    description = "Elastic cluster availability zone"
}
variable "elastic_cluter_engine" {
    default = "radis"
}
variable "elastic_cluster_engine_version" {
    default = "5.0.6"
}
variable "elastic_cluster_maintenance_window" {
      description = "The desired maintenance window for the ElastiCache cluster."
      default     = "sat:02:00-sat:05:00"
}
}
variable "elastic_cluster_node_type" {
    default = "cache.t2.small"
}
variable "elasticache_notification_topic_arn" {
      description = "An ARN of an SNS topic to send ElastiCache notifications to."
      default     = ""
}
variable "elasticache_node_count" {
    default = 1
}
variable "elasticache_port" {
    default = "6379"
}
variable "elastic_cache_cluster_sg" {
    type=list
}

variable "elasticache_parameter_name" {}
variable "elasticache_param_group_family" {
    default     = "redis5.0"
}
variable "elasticache_subnets_name" {}
variable "elasticache_subnets" {
    type = list
}