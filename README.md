# terraform-aws-elasticcache-redis
```
Usage of this module. 

module "elastic_cluster_build" {
    source = "git@github.com:shaikis/terraform-aws-elasticcache-redis.git"
    elastic_cluster_name               " "elastic-cluster-dev-testing"
    elastic_cache_availability_zone    = "eu-west-1a, eu-west-1b"
    elasticache_notification_topic_arn = module.sns_topic.sns_topic_arn # sns topic arn details here.
    elastic_cache_cluster_sg           = [sg-123, sg-1234]
    elasticache_parameter_name         =  "elastic-cluster-params
    elasticache_subnets_name           =  "elastic-cluster-dev-subnets"
    elasticache_subnets                = [sunet-abc123, subnet-xyz123]
}
```
