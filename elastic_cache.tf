resource "aws_elasticache_cluster" "elastic_cluter" {
    cluster_id             = var.elastic_cluster_name
    apply_immediately      = var.elastic_cache_apply_immediate_bool
    availability_zone      = var.elastic_cache_availability_zone
    engine                 = var.elastic_cluter_engine
    engine_version         = var.elastic_cluster_engine_version
    maintenance_window     = var.elastic_cluster_maintenance_window
    node_type              = var.elastic_cluster_node_type
    notification_topic_arn = var.elasticache_notification_topic_arn
    num_cache_nodes        = var.elasticache_node_count
    parameter_group_name   = aws_elasticache_parameter_group.elasticache_parameter.name
    port                   = var.elasticache_port
    subnet_group_name      = aws_elasticache_subnet_group.elasticache_subnets.id
    security_group_ids     = var.elastic_cache_cluster_sg
  
}
resource "aws_elasticache_parameter_group" "elasticache_parameter" {
  name        = var.elasticache_parameter_name
  family      = var.elasticache_param_group_family
 
}

resource "aws_elasticache_subnet_group" "elasticache_subnets" {
  name        = var.elasticache_subnets_name
  subnet_ids  = [split(",", var.elasticache_subnets)]
}
