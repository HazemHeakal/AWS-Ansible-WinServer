{
  "version": 4,
  "terraform_version": "1.6.5",
  "serial": 18,
  "lineage": "6266c359-46b2-6689-eae3-d4aff308a913",
  "outputs": {
    "instance_id": {
      "value": "i-09d89ba358993ef42",
      "type": "string"
    },
    "instance_ip": {
      "value": "13.59.145.2",
      "type": "string"
    }
  },
  "resources": [
    {
      "mode": "data",
      "type": "aws_instance",
      "name": "example",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "ami": "ami-0d7dd61c1b4cb03f7",
            "arn": "arn:aws:ec2:us-east-2:681581323337:instance/i-09d89ba358993ef42",
            "associate_public_ip_address": true,
            "availability_zone": "us-east-2b",
            "credit_specification": [
              {
                "cpu_credits": "unlimited"
              }
            ],
            "disable_api_stop": false,
            "disable_api_termination": false,
            "ebs_block_device": [],
            "ebs_optimized": false,
            "enclave_options": [
              {
                "enabled": false
              }
            ],
            "ephemeral_block_device": [],
            "filter": null,
            "get_password_data": false,
            "get_user_data": false,
            "host_id": "",
            "host_resource_group_arn": "",
            "iam_instance_profile": "",
            "id": "i-09d89ba358993ef42",
            "instance_id": "i-09d89ba358993ef42",
            "instance_state": "running",
            "instance_tags": null,
            "instance_type": "t3.large",
            "ipv6_addresses": [],
            "key_name": "AWS_KEy",
            "maintenance_options": [
              {
                "auto_recovery": "default"
              }
            ],
            "metadata_options": [
              {
                "http_endpoint": "enabled",
                "http_protocol_ipv6": "disabled",
                "http_put_response_hop_limit": 1,
                "http_tokens": "optional",
                "instance_metadata_tags": "disabled"
              }
            ],
            "monitoring": false,
            "network_interface_id": "eni-0e09f71cca55ca064",
            "outpost_arn": "",
            "password_data": null,
            "placement_group": "",
            "placement_partition_number": 0,
            "private_dns": "ip-172-31-16-137.us-east-2.compute.internal",
            "private_dns_name_options": [
              {
                "enable_resource_name_dns_a_record": false,
                "enable_resource_name_dns_aaaa_record": false,
                "hostname_type": "ip-name"
              }
            ],
            "private_ip": "172.31.16.137",
            "public_dns": "ec2-13-59-145-2.us-east-2.compute.amazonaws.com",
            "public_ip": "13.59.145.2",
            "root_block_device": [
              {
                "delete_on_termination": true,
                "device_name": "/dev/sda1",
                "encrypted": false,
                "iops": 150,
                "kms_key_id": "",
                "tags": {},
                "throughput": 0,
                "volume_id": "vol-02f30ef24d3fbee32",
                "volume_size": 50,
                "volume_type": "gp2"
              }
            ],
            "secondary_private_ips": [],
            "security_groups": [
              "allow_rddpp"
            ],
            "source_dest_check": true,
            "subnet_id": "subnet-0577997c9afe22283",
            "tags": {
              "Name": "WindowsServerWithIIS"
            },
            "tenancy": "default",
            "timeouts": null,
            "user_data": "ed9896c6cb007291a67949907854f68b96cb271f",
            "user_data_base64": null,
            "vpc_security_group_ids": [
              "sg-044ce289d2b556b09"
            ]
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_instance",
      "name": "windows_instance",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "ami": "ami-0d7dd61c1b4cb03f7",
            "arn": "arn:aws:ec2:us-east-2:681581323337:instance/i-09d89ba358993ef42",
            "associate_public_ip_address": true,
            "availability_zone": "us-east-2b",
            "capacity_reservation_specification": [
              {
                "capacity_reservation_preference": "open",
                "capacity_reservation_target": []
              }
            ],
            "cpu_core_count": 1,
            "cpu_options": [
              {
                "amd_sev_snp": "",
                "core_count": 1,
                "threads_per_core": 2
              }
            ],
            "cpu_threads_per_core": 2,
            "credit_specification": [
              {
                "cpu_credits": "unlimited"
              }
            ],
            "disable_api_stop": false,
            "disable_api_termination": false,
            "ebs_block_device": [],
            "ebs_optimized": false,
            "enclave_options": [
              {
                "enabled": false
              }
            ],
            "ephemeral_block_device": [],
            "get_password_data": true,
            "hibernation": false,
            "host_id": "",
            "host_resource_group_arn": null,
            "iam_instance_profile": "",
            "id": "i-09d89ba358993ef42",
            "instance_initiated_shutdown_behavior": "stop",
            "instance_lifecycle": "",
            "instance_market_options": [],
            "instance_state": "running",
            "instance_type": "t3.large",
            "ipv6_address_count": 0,
            "ipv6_addresses": [],
            "key_name": "AWS_KEy",
            "launch_template": [],
            "maintenance_options": [
              {
                "auto_recovery": "default"
              }
            ],
            "metadata_options": [
              {
                "http_endpoint": "enabled",
                "http_protocol_ipv6": "disabled",
                "http_put_response_hop_limit": 1,
                "http_tokens": "optional",
                "instance_metadata_tags": "disabled"
              }
            ],
            "monitoring": false,
            "network_interface": [],
            "outpost_arn": "",
            "password_data": "bODbmuW1WB4GCNz2hv8IHCdboWctNXBK9V7fARyP7YnYKiGK0i2XAPHajLZiBWV0a7BVyk9lMJTGbQrt1l2csfeoN1o+NfqN0dEjhxAp4T0uA4YBawB+GCq1il3i95k9qAuMANqjBor0aHTTCVYYjsoHmg+fq85cZguFQ9zsUq8Hd2tVW3wXr2nkUoe8UO2SlPuum8b132QWDF9PqwdylZsbT+y7CFkJzML8Hs3gQ6/JGq4Ty1Wuy037aZAvhmWSBfFudlLjF8gbdVLhQepRs090KmAeKsRli8IHXFWU7UXlegmgkqHBiEJo+4hdFWyy638ar/h03vfUo65OeTcLgdnByzpv/U1V7EPQG2wbyFin6gdLI2ZsLN0QPf+xroCJd2/W+74QZ/7Ucm15FHrgjyzMr+bKzQ3m1gjWssHvH/XOUUWyEmITN49SZ1SVF2qjTu80nFzpGquwCnwHyXQGu6RPT43Vz8KQeyQbnqRhpEgfnwkCJ1Ca+muK/Sz9GZwA",
            "placement_group": "",
            "placement_partition_number": 0,
            "primary_network_interface_id": "eni-0e09f71cca55ca064",
            "private_dns": "ip-172-31-16-137.us-east-2.compute.internal",
            "private_dns_name_options": [
              {
                "enable_resource_name_dns_a_record": false,
                "enable_resource_name_dns_aaaa_record": false,
                "hostname_type": "ip-name"
              }
            ],
            "private_ip": "172.31.16.137",
            "public_dns": "ec2-13-59-145-2.us-east-2.compute.amazonaws.com",
            "public_ip": "13.59.145.2",
            "root_block_device": [
              {
                "delete_on_termination": true,
                "device_name": "/dev/sda1",
                "encrypted": false,
                "iops": 150,
                "kms_key_id": "",
                "tags": {},
                "throughput": 0,
                "volume_id": "vol-02f30ef24d3fbee32",
                "volume_size": 50,
                "volume_type": "gp2"
              }
            ],
            "secondary_private_ips": [],
            "security_groups": [
              "allow_rddpp"
            ],
            "source_dest_check": true,
            "spot_instance_request_id": "",
            "subnet_id": "subnet-0577997c9afe22283",
            "tags": {
              "Name": "WindowsServerWithIIS"
            },
            "tags_all": {
              "Name": "WindowsServerWithIIS"
            },
            "tenancy": "default",
            "timeouts": null,
            "user_data": "ed9896c6cb007291a67949907854f68b96cb271f",
            "user_data_base64": null,
            "user_data_replace_on_change": false,
            "volume_tags": null,
            "vpc_security_group_ids": [
              "sg-044ce289d2b556b09"
            ]
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6MTIwMDAwMDAwMDAwMCwidXBkYXRlIjo2MDAwMDAwMDAwMDB9LCJzY2hlbWFfdmVyc2lvbiI6IjEifQ==",
          "dependencies": [
            "aws_key_pair.auth",
            "aws_security_group.allow_rdp"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_key_pair",
      "name": "auth",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-2:681581323337:key-pair/AWS_KEy",
            "fingerprint": "8c:19:69:09:74:2b:7b:ac:f2:69:fe:3e:c2:e1:6e:35",
            "id": "AWS_KEy",
            "key_name": "AWS_KEy",
            "key_name_prefix": "",
            "key_pair_id": "key-0d47215afd1db9c2f",
            "key_type": "rsa",
            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/XoE169fQ+YIX9q6fWTqA1B8HLhL6FHwH+A7KEKvdEg6J3TeRSbR5SPswVWE5zIg7owmCD02jYyA+6ZfSRyFbz6N4y/tw0IkCV6EL7h1Dt42aiLcKuUBEhyaD3uB81b8q0jFjsF2E/toibq42bcvJsGIJ/tXfJhc09fpSBkAEz0wrSeE2HPabo1Hz+MUfEOLNJZOrHAHh03rFU8EaAS9yapUrNNyTw7Ff0Ch2f5lQ9VJ/cGKqkuSKS3pCCS6DbvPBrVSqy2/J+ho5ExjwV6Dn93jKFSsAQ+68/sYE5d3yO/9HMiXJpI5EG3/cMk8baE1aiL1fWyrxPvFy1qJQf7U48JmjIg61G9j3SIOmgr+MzPlCXDwLbrnLopFHiSa1Ua1p+R1bfYHEvMg2cbmaL/z0/BoAkC28vupsAWjU1PHUadyQICp0iVA1VEx6yUhaKKWL9y7msJVjQ1MzUHwVT0SG34A/jn2+MT6Y3nEvCA4NoR8MzapcvLsJwznKS0LTue0= hazem@DESKTOP-52EUF8F",
            "tags": {},
            "tags_all": {}
          },
          "sensitive_attributes": [],
          "private": "eyJzY2hlbWFfdmVyc2lvbiI6IjEifQ=="
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_security_group",
      "name": "allow_rdp",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-2:681581323337:security-group/sg-044ce289d2b556b09",
            "description": "Allow RDP inbound traffic",
            "egress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 0,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "-1",
                "security_groups": [],
                "self": false,
                "to_port": 0
              }
            ],
            "id": "sg-044ce289d2b556b09",
            "ingress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 3389,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "tcp",
                "security_groups": [],
                "self": false,
                "to_port": 3389
              }
            ],
            "name": "allow_rddpp",
            "name_prefix": "",
            "owner_id": "681581323337",
            "revoke_rules_on_delete": false,
            "tags": null,
            "tags_all": {},
            "timeouts": null,
            "vpc_id": "vpc-064c51485601b1d77"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6OTAwMDAwMDAwMDAwfSwic2NoZW1hX3ZlcnNpb24iOiIxIn0="
        }
      ]
    }
  ],
  "check_results": null
}
