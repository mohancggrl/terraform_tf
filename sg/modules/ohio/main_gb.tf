#==== apg_tokenizer ========

resource "aws_security_group" "apg_tokenizer" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "apg_tokenizer"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_apg_tokenizer

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_apg_tokenizer_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_apg_tokenizer

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "apg_tokenizer"
		Env  = "svp_cst"
	}
}


#=== cgep-crypto-web======

resource "aws_security_group" "cegp_crypto_web" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "cegp_crypto_web"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_cegp_crypto_web

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_cegp_crypto_web_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_cegp_crypto_web

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "cegp_crypto_web"
		Env  = "svp_cst"
	}
}

#===== weaver_tokenization_batch ==========

resource "aws_security_group" "weaver_tokenization_batch" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "weaver_tokenization_batch"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_weaver_tokenization_batch

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_weaver_tokenization_batch_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_weaver_tokenization_batch

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "weaver_tokenization_batch"
		Env  = "svp_cst"
	}
}

#=== ds_entity_service ========

resource "aws_security_group" "ds_entity_service" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "ds_entity_service"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_ds_entity_service

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_ds_entity_service_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_ds_entity_service

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "ds_entity_service"
		Env  = "svp_cst"
	}
}

#====== ds_api_transaction_service ====

resource "aws_security_group" "ds_api_transaction_service" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "ds_api_transaction_service"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_ds_api_transaction_service

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_ds_api_transaction_service_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_ds_api_transaction_service

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "ds_api_transaction_service"
		Env  = "svp_cst"
	}
}

#==== ds_api_query_service =======

resource "aws_security_group" "ds_api_query_service" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "ds_api_query_service"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_ds_api_query_service

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_ds_api_query_service_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_ds_api_query_service

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "ds_api_query_service"
		Env  = "svp_cst"
	}
}

#==== ds_api_kafka_mongodb_consumer ========

resource "aws_security_group" "ds_api_kafka_mongodb_consumer" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "ds_api_kafka_mongodb_consumer"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_ds_api_kafka_mongodb_consumer

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_ds_api_kafka_mongodb_consumer_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_ds_api_kafka_mongodb_consumer

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "ds_api_kafka_mongodb_consumer"
		Env  = "svp_cst"
	}
}

#===== receipt_service ====

resource "aws_security_group" "receipt_service" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "receipt_service"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_receipt_service

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_receipt_service_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_receipt_service

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "receipt_service"
		Env  = "svp_cst"
	}
}

#==== global_pre_processor ======

resource "aws_security_group" "global_pre_processor" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "global_pre_processor"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_global_pre_processor

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_global_pre_processor_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_global_pre_processor
		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "global_pre_processor"
		Env  = "svp_cst"
	}
}

#===== svc_global_settlement_engine ========

resource "aws_security_group" "svc_global_settlement_engine" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "svc_global_settlement_engine"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_svc_global_settlement_engine

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_svc_global_settlement_engine_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_svc_global_settlement_engine

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "svc_global_settlement_engine"
		Env  = "svp_cst"
	}
}

#=== bin_service ====

resource "aws_security_group" "bin_service" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "bin_service"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_bin_service

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_bin_service_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_bin_service
		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "bin_service"
		Env  = "svp_cst"
	}
}

#=== GICC_PIM =======

resource "aws_security_group" "GICC_PIM" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "GICC_PIM"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_GICC_PIM

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_GICC_PIM_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_GICC_PIM

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "GICC_PIM"
		Env  = "svp_cst"
	}
}

#=== GICC_PIM_CM5 =====

resource "aws_security_group" "GICC_PIM_CM5" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "GICC_PIM_CM5"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_GICC_PIM_CM5

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_GICC_PIM_CM5_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_GICC_PIM_CM5

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "GICC_PIM_CM5"
		Env  = "svp_cst"
	}
}
