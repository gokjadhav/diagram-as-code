from diagrams import Cluster, Diagram
from diagrams.aws.compute import ECS
from diagrams.aws.network import ELB, Route53
from diagrams.aws.database import RDS

graph_attr = {
    "fontsize": "18"
}

with Diagram("Simple Diagram", show=False, graph_attr=graph_attr):
    dns = Route53("dns")
    lb = ELB("lb")

    with Cluster("Services"):
        web_service_group = [ECS("web1"), ECS("web2")]

    with Cluster("DB Cluster"):
        db_master = RDS("db1 master")
        db_master - [RDS("db1 read only")]

    dns >> lb >> web_service_group
    web_service_group >> db_master
    web_service_group << db_master

    