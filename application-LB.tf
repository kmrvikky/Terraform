# application loadbalancer

resource "aws_lb" "alb-web"{
    name="alb-web"
    internal=false
    load_balancer_type="application"
    security_groups=["add security group"]
    subnets =[aws_subnet.web-subnet-1.id, aws_subnet.web-subnet-2.id]
}