# Terraform Module: GitHub: Wellenplan Directus Extension Repository

Used by [terraform-infra-github](https://github.com/wellenplan/terraform-infra-github) to manage [Directus](https://directus.io) extension git repositories.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch_protection.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_repository.repo](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | Name of default branch for repo. Used to set up branch protection. | `string` | `"main"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of managed repo. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the managed repo. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | GitHub organisation that owns the repo. | `string` | `"wellenplan"` | no |
| <a name="input_template"></a> [template](#input\_template) | Template to use for creating new repos | `string` | `"directus-extension-wellenplan-template"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_branches"></a> [branches](#output\_branches) | Default branches for the created repo. |
| <a name="output_html_url"></a> [html\_url](#output\_html\_url) | HTML URL of the created repo. |
<!-- END_TF_DOCS -->
