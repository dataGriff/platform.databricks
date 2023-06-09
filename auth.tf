terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
  cloud {
    organization = "datagriff"

    workspaces {
      name = "learn_platform_databricks"
    }
  }
}

# Use environment variables for authentication.
provider "databricks" {}

# Retrieve information about the current user.
data "databricks_current_user" "me" {}
