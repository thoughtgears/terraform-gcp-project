# GCP Project Module

![Terraform Version](https://img.shields.io/badge/tf-%3E%3D1.0.x-blue.svg)

Creates and manages projects in Google Cloud Platform.

## Usage

```hcl
module "my" {
  source  = "git::git@github.com:thoughtgears/terraform-gcp-project.git?ref=latest"

  project_config = {
    name         = "example"
    folder_id    = "1234"
    service_apis = ["example.googleapis.com"]
  }
}
```

## What's in this repo

This repo has the following folder structure:

- [examples](https://github.com/thoughtgears/gcp-xxx-modules/examples): The example folder contains an one or more examples of how to use the modules.

- [root](https://github.com/thoughtgears/gcp-xxx-modules/blob/main): This root contains the module code.

- [test](https://github.com/thoughtgears/gcp-xxx-modules/blob/main/test): Automated tests modules and examples.

## What's a Module?

A Module is a canonical, reusable, best-practices definition for how to run a single piece of infrastructure, such as a database or server cluster.
Each Module is written using a combination of [Terraform](https://www.terraform.io/) and scripts (mostly bash) and include automated tests, documentation, and examples.
It is maintained both by the open source community and companies that provide commercial support.

Instead of figuring out the details of how to run a piece of infrastructure from scratch, you can reuse  existing code that has been proven in production.
And instead of maintaining all that infrastructure code yourself, you can leverage the work of the Module community to pick up infrastructure improvements through a version number bump.

## How is this Module versioned?

This Module follows the principles of [Semantic Versioning](http://semver.org/). You can find each new release, along with the changelog, in the [Releases Page](https://github.com/thoughtgears/gcp-xxx-modules/releases).

During initial development, the major version will be 0 (e.g., `0.x.y`), which indicates the code does not yet have a stable API.
Once we hit `1.0.0`, we will make every effort to maintain a backwards compatible API and use the MAJOR, MINOR, and PATCH versions on each release to indicate any incompatibilities.

## Module resource documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.4.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git@github.com:thoughtgears/terraform-gcp-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [google_project.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project_service.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [random_integer.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create_default_network"></a> [auto\_create\_default\_network](#input\_auto\_create\_default\_network) | Option to remove the default network on project creation. | `bool` | `false` | no |
| <a name="input_billing_id"></a> [billing\_id](#input\_billing\_id) | ID of the billing account associated with the organization | `string` | n/a | yes |
| <a name="input_custom_labels"></a> [custom\_labels](#input\_custom\_labels) | A map of key/pair values to use for custom project labels | `map(string)` | `{}` | no |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Google Cloud Platform Organization ID | `string` | n/a | yes |
| <a name="input_project_config"></a> [project\_config](#input\_project\_config) | Project configuration to define the project. Needs a name that will be concatenated with a random 5 digit string to make the project ID.<br>If a folder is specified it will create a folder based on the parent folder described, else it will create a project at the top level of the<br>organization.<br>If apis are defined they will be concatenated with a list of default API:s to enable during project creation. | <pre>object({<br>    name         = string<br>    folder_id    = optional(string)<br>    service_apis = optional(list(string))<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_billing_id"></a> [billing\_id](#output\_billing\_id) | n/a |
| <a name="output_folder"></a> [folder](#output\_folder) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_labels"></a> [labels](#output\_labels) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_number"></a> [number](#output\_number) | n/a |
| <a name="output_organization_id"></a> [organization\_id](#output\_organization\_id) | n/a |
<!-- END_TF_DOCS -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.4.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git@github.com:thoughtgears/terraform-gcp-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [google_project.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project_service.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [random_integer.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create_default_network"></a> [auto\_create\_default\_network](#input\_auto\_create\_default\_network) | Option to remove the default network on project creation. | `bool` | `false` | no |
| <a name="input_billing_id"></a> [billing\_id](#input\_billing\_id) | ID of the billing account associated with the organization | `string` | n/a | yes |
| <a name="input_custom_labels"></a> [custom\_labels](#input\_custom\_labels) | A map of key/pair values to use for custom project labels | `map(string)` | `{}` | no |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Google Cloud Platform Organization ID | `string` | n/a | yes |
| <a name="input_project_config"></a> [project\_config](#input\_project\_config) | Project configuration to define the project. Needs a name that will be concatenated with a random 5 digit string to make the project ID.<br>If a folder is specified it will create a folder based on the parent folder described, else it will create a project at the top level of the<br>organization.<br>If apis are defined they will be concatenated with a list of default API:s to enable during project creation. | <pre>object({<br>    name         = string<br>    folder_id    = optional(string)<br>    service_apis = optional(list(string))<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_billing_id"></a> [billing\_id](#output\_billing\_id) | n/a |
| <a name="output_folder"></a> [folder](#output\_folder) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_labels"></a> [labels](#output\_labels) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_number"></a> [number](#output\_number) | n/a |
| <a name="output_organization_id"></a> [organization\_id](#output\_organization\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
