# tf_notification sub-module - main.tf
resource "tfe_notification_configuration" "this" {
  count               = var.create_notification ? 1 : 0
  name                = var.notification_name
  enabled             = var.enabled

  dynamic "destination_type" {
    count             = var.destination_type == "email"
    content {
      email_user_ids  = var.email_user_ids
    }
  }

  dynamic "destination_type" {
    count             = var.destination_type != "email"
    content {
      url             = var.url
    }
  }

  triggers          = var.triggers
  workspace_id      = tfe_workspace.this.id
}
