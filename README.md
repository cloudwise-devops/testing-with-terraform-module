# Testing With Terraform Module
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.53.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.53.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.default](https://registry.terraform.io/providers/hashicorp/google/4.53.1/docs/resources/compute_instance) | resource |
| [google_service_account.default](https://registry.terraform.io/providers/hashicorp/google/4.53.1/docs/resources/service_account) | resource |
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/4.53.1/docs/resources/storage_bucket) | resource |
| [random_string.string](https://registry.terraform.io/providers/hashicorp/random/3.4.3/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_buckets_create"></a> [buckets\_create](#input\_buckets\_create) | create buckets for deployment | `bool` | `false` | no |
| <a name="input_env"></a> [env](#input\_env) | ENV name where we deploy | `string` | `"test"` | no |
| <a name="input_gcp_project"></a> [gcp\_project](#input\_gcp\_project) | GCP project name | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Google cloud region | `string` | `"europe-west4"` | no |
| <a name="input_gcp_zone"></a> [gcp\_zone](#input\_gcp\_zone) | Google cloud zone | `string` | `"europe-west4-a"` | no |
| <a name="input_machine_create"></a> [machine\_create](#input\_machine\_create) | Create vm machine | `bool` | `true` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `string` | `"e2-medium"` | no |
| <a name="input_name"></a> [name](#input\_name) | project name | `string` | n/a | yes |
| <a name="input_vcn_name"></a> [vcn\_name](#input\_vcn\_name) | VCN name | `string` | n/a | yes |
| <a name="input_vcn_subnetwork"></a> [vcn\_subnetwork](#input\_vcn\_subnetwork) | VCN subnetwork name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
