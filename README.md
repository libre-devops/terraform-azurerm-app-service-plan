# Info

This module is feature frozen as it uses app_service_plan, please use [Service Plan](https://registry.terraform.io/modules/libre-devops/service-plan/azurerm/latest)

```hcl
module "asp_old" {
  source = "registry.terraform.io/libre-devops/app-service-plan/azurerm"

  rg_name  = module.rg.rg_name
  location = module.rg.rg_location
  tags     = module.rg.rg_tags

  app_service_plan_name          = "plan-${var.short}-${var.loc}-${terraform.workspace}-01"
  add_to_app_service_environment = false

  kind = "Linux"
  sku = {
    tier = "Dynamic"
    size = "Y1"
  }
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_service_plan.plan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_to_app_service_environment"></a> [add\_to\_app\_service\_environment](#input\_add\_to\_app\_service\_environment) | Whether or not this app service plan should be added to an app service environment | `bool` | `false` | no |
| <a name="input_app_service_environment_id"></a> [app\_service\_environment\_id](#input\_app\_service\_environment\_id) | If an ASE is used, supply the ID to it here | `string` | `""` | no |
| <a name="input_app_service_plan_name"></a> [app\_service\_plan\_name](#input\_app\_service\_plan\_name) | The name for the App service plan | `string` | n/a | yes |
| <a name="input_kind"></a> [kind](#input\_kind) | The kind of the App Service Plan to create. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#kind | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Azure location. | `string` | n/a | yes |
| <a name="input_maximum_elastic_worker_count"></a> [maximum\_elastic\_worker\_count](#input\_maximum\_elastic\_worker\_count) | If ElasticScaleEnabled app service plan is used, the max number of nodes | `string` | `""` | no |
| <a name="input_per_site_scaling"></a> [per\_site\_scaling](#input\_per\_site\_scaling) | Should per site scaling be used? | `bool` | `false` | no |
| <a name="input_reserved"></a> [reserved](#input\_reserved) | Flag indicating if App Service Plan should be reserved. Forced to true if "kind" is "Linux". | `string` | `"false"` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | A sku block. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#sku | `map(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of the tags to use on the resources that are deployed with this module. | `map(string)` | <pre>{<br>  "source": "terraform"<br>}</pre> | no |
| <a name="input_zone_redundant"></a> [zone\_redundant](#input\_zone\_redundant) | Should the ASP be zone redundant? | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_service_plan_id"></a> [app\_service\_plan\_id](#output\_app\_service\_plan\_id) | Id of the created App Service Plan |
| <a name="output_app_service_plan_location"></a> [app\_service\_plan\_location](#output\_app\_service\_plan\_location) | Azure location of the created App Service Plan |
| <a name="output_app_service_plan_max_workers"></a> [app\_service\_plan\_max\_workers](#output\_app\_service\_plan\_max\_workers) | Maximum number of workers for the created App Service Plan |
| <a name="output_app_service_plan_name"></a> [app\_service\_plan\_name](#output\_app\_service\_plan\_name) | Name of the created App Service Plan |
