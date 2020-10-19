## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enabled | Set to `false` to prevent the module from creating any resources | `string` | `"true"` | no |
| log\_destination | ARN of logging destination | `string` | `""` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |
| vpc\_ids |  | `list(string)` | `[]` | no |

## Outputs

No output.
