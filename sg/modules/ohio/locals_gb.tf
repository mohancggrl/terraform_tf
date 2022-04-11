locals {
    ingress_rules_apg_tokenizer = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_apg_tokenizer_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_apg_tokenizer = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
#=== cegp_crypto_web======

    ingress_rules_cegp_crypto_web = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_cegp_crypto_web_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_cegp_crypto_web = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

# ==== weaver_tokenization_batch ====

    ingress_rules_weaver_tokenization_batch = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_weaver_tokenization_batch_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_weaver_tokenization_batch = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
#== ds_entity_service =======

    ingress_rules_ds_entity_service = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_ds_entity_service_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]		
	}]
	
	egress_rules_ds_entity_service = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]	
	
#=== ds_api_transaction_service ===


    ingress_rules_ds_api_transaction_service = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_ds_api_transaction_service_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_ds_api_transaction_service = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]	
	
#== ds_api_query_service =====	

    ingress_rules_ds_api_query_service = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_ds_api_query_service_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_ds_api_query_service = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
#=== ds_api_kafka_mongodb_consumer ===========

    ingress_rules_ds_api_kafka_mongodb_consumer = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_ds_api_kafka_mongodb_consumer_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_ds_api_kafka_mongodb_consumer = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]	
	
#====== receipt_service ====	

    ingress_rules_receipt_service = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_receipt_service_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_receipt_service = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
#=== global_pre_processor ===

    ingress_rules_global_pre_processor = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_global_pre_processor_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_global_pre_processor = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]	
	
#=== svc_global_settlement_engine ========	

    ingress_rules_svc_global_settlement_engine = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_svc_global_settlement_engine_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_svc_global_settlement_engine = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
#==== GICC_PIM ==========	

    ingress_rules_GICC_PIM = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_GICC_PIM_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_GICC_PIM = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
#==== GICC_PIM_CM5 ======

    ingress_rules_GICC_PIM_CM5 = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_GICC_PIM_CM5_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_GICC_PIM_CM5 = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]	
	
	ingress_rules_bin_service = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	
	ingress_rules_bin_service_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_bin_service = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]	
}
