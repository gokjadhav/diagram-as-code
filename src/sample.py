from diagrams import Diagram
from diagrams.aws.compute import EC2

graph_attr = {
    "fontsize": "45"
}

with Diagram("Simple Diagram", show=False, graph_attr=graph_attr):
    EC2("web")