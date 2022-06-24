# Welcome to tfe_notification 👋

## Show your support

Give a ⭐️ if this project helped you!


***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.30.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_notification_configuration.email](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/notification_configuration) | resource |
| [tfe_notification_configuration.generic](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/notification_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_notification"></a> [create\_notification](#input\_create\_notification) | Whether or not to create the notification | `bool` | `false` | no |
| <a name="input_destination_type"></a> [destination\_type](#input\_destination\_type) | Notification destination type. Available options: email, generic, slack | `string` | `""` | no |
| <a name="input_email_user_ids"></a> [email\_user\_ids](#input\_email\_user\_ids) | Email addresses to send the notification to if destination type is set to email. | `list(string)` | `[]` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether the notification is enabled or not | `bool` | `true` | no |
| <a name="input_notification_name"></a> [notification\_name](#input\_notification\_name) | The name of the notification | `string` | `"sophos-factory-runner"` | no |
| <a name="input_triggers"></a> [triggers](#input\_triggers) | Event that should trigger the notification. Available options are: run:created, run:planning, run:needs\_attention, run:applying, run:completed, run:errored | `list(string)` | `[]` | no |
| <a name="input_url"></a> [url](#input\_url) | The URL for generic and slack destination types | `string` | `"url"` | no |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | Workspace ID for the variable | `string` | `""` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
