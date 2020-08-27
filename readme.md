# Terraform Cloud update variable

This action updates a single terraform cloud variable variable.

## Inputs

#### `tf-oken` 
**Required** An API token for Terraform Cloud..

#### `workspace-name` 
**Required** The Terraform Cloud workspace to update.

#### `org-name` 
**Required** The Terraform Cloud organization the workspace belongs to.

#### `var-key` 
**Required** The terraform cloud variable key to update.

#### `var-value` 
**Required** The terraform cloud variable value.

## Example usage 

uses: HussleHQ/terraform-cloud-update-var@v1
with:
  tf-token: '***'
  workspace-name: 'Workout'
  org-name: 'Hussle'
  var-key: 'Gym'
  var-value: 'ThousandsOfGyms'

