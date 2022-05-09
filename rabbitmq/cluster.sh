#!/bin/bash

echo "重置节点1"
docker exec -it rabbitmq1 bash -c "rabbitmqctl stop_app && rabbitmqctl reset && rabbitmqctl start_app"

echo "节点2加入集群，配置为内存节点"
docker exec -it rabbitmq2 bash -c "rabbitmqctl stop_app && rabbitmqctl reset && rabbitmqctl join_cluster --ram rabbitmq1@rabbitmq1 && rabbitmqctl start_app"

echo "节点3加入集群，配置为内存节点"
docker exec -it rabbitmq3 bash -c "rabbitmqctl stop_app && rabbitmqctl reset && rabbitmqctl join_cluster --ram rabbitmq1@rabbitmq1 && rabbitmqctl start_app"

