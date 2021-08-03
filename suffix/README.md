# Suffix generator

Provides 4-(or requested)-length random character suffix.

## Usage

```terraform
module "suffix" {
  source = "github.com/terraform-training/public-modules//suffix?ref=main"
  suffix_length = 3
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| suffix\_length | How long should the suffix be | `number` | `4` | no |

## Outputs

| Name | Description |
|------|-------------|
| result | Random identifier to use in names |
