# tf_notification sub-module - main.tf
resource "tfe_notification_configuration" "this" {
  count               = var.create_notification ? 1 : 0
  name                = var.notification_name
  enabled             = var.enabled
  destination_type    = var.destination_type
  url                 = var.url
  triggers            = var.triggers
  workspace_id        = var.workspace_id
}
