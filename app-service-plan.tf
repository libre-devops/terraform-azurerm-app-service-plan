resource "azurerm_app_service_plan" "plan" {
  name = var.app_service_plan_name

  location                     = var.location
  resource_group_name          = var.rg_name
  kind                         = var.kind
  reserved                     = var.kind == "Linux" ? true : var.reserved
  app_service_environment_id   = var.add_to_app_service_environment ? var.app_service_environment_id : false
  maximum_elastic_worker_count = var.maximum_elastic_worker_count
  per_site_scaling             = var.per_site_scaling
  zone_redundant               = var.zone_redundant
  sku {
    capacity = lookup(var.sku, "capacity", null)
    size     = lookup(var.sku, "size", null)
    tier     = lookup(var.sku, "tier", null)
  }

  tags = var.tags
}