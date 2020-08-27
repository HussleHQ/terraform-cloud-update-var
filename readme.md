# Terraform Cloud update variable

This action updates a single terraform cloud variable variable.

## Inputs

#### `tf-token` 
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

```
uses: HussleHQ/terraform-trigger-cloud-run@v1
with:
  tf-token: ${{ secrets.TERRAFORM_TOKEN }}
  workspace-name: ${{ env.WORKSPACE_NAME }}
  org-name: ${{ env.ORG_NAME }}
```

## Development

```
# git add as per usual

git tag -a -m 'Thousands of gyms. Zero contracts.' v1
git push --follow-tags
```
