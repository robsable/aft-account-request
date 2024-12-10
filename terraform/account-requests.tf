module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "robsable+tf1@amazon.com"
    AccountName               = "Rob TF Account 1"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "robsable+aft@amazon.com"
    SSOUserFirstName          = "Rob"
    SSOUserLastName           = "Sable"
  }

  account_tags = {
    "RobSable:Owner"       = "robsable@amazon.com"
    "RobSable:Environment" = "DEV"
    "RobSable:CostCenter"  = "123456"
    "RobSable:Vended"      = "true"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Automation"
    change_reason       = "AWS Control Tower Account Factory for Terraform (AFT)"
  }

  account_customizations_name = "SANDBOX"
}
