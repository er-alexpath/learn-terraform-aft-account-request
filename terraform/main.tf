module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cashrail.dentaluser@gmail.com"
    AccountName               = "cashrail-dentalsandbox"
    ManagedOrganizationalUnit = "CashRails"
    SSOUserEmail              = "cashrail.dentaluser@gmail.com"
    SSOUserFirstName          = "Dental"
    SSOUserLastName           = "Sandbox"
  }

  account_tags = {
    "Purpose" = "Sandbox for Dental"
  }

  change_management_parameters = {
    change_requested_by = "Amit"
    change_reason       = "Create new account for dental sandbox"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

