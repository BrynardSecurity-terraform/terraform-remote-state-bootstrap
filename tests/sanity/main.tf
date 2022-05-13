module "oauth_client" {
  source                = "../../modules/tfe_oauth_client/"
  tfe_oauth_client_name = var.tfe_oauth_client_name
  api_url               = var.api_url
  https_url             = var.https_url
  oauth_token           = var.oauth_token
  organization          = var.organization
  service_provider      = var.service_provider
}
