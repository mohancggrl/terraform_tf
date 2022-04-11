resource "aws_elb" "elb" {
  count = "${var.enable ? 1 : 0}"

  name            = "${var.name}"
  subnets         = var.subnet_ids
  security_groups = var.security_group_ids

  internal                    = "${var.internal}"
  cross_zone_load_balancing   = "${var.cross_zone_load_balancing}"
  idle_timeout                = "${var.idle_timeout}"
  connection_draining         = "${var.connection_draining}"
  connection_draining_timeout = "${var.connection_draining_timeout}"

  listener {
    instance_port     = "${var.instance_port}"
    instance_protocol = "${var.instance_protocol}"
    lb_port           = "${var.lb_port}"
    lb_protocol       = "${var.lb_protocol}"
  }

  health_check {
    healthy_threshold   = "${var.healthy_threshold}"
    unhealthy_threshold = "${var.unhealthy_threshold}"
    timeout             = "${var.timeout}"
    target              = "${var.target}"
    interval            = "${var.interval}"
  }
  tags = {
    Name = "${var.name}"
  }
}

resource "aws_elb_attachment" "sample" {
  depends_on = [aws_elb.elb]
  count    = "${var.enable ? length(var.instance_ids) : 0}"
  elb      = "${var.name}"
  instance = element(var.instance_ids, count.index)
}
