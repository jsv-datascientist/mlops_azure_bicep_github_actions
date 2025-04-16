@description('Specify the environment for the deployment. Allowed values are: prod, dev, test.')
@allowed([
  'prod'
  'dev'
])
param environment string = 'dev'

@description('Specify the name of the storage account.')    

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'jsvtorageaccount'
  location: resourceGroup().location
  sku: {
    name: (environment == 'dev') ? 'Standard_LRS' : 'Standard_GRS'
  }
  kind: 'StorageV2'
}
