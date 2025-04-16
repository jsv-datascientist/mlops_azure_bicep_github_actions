@description('Specifies the location for all resources')
@allowed([
  'eastus'
  'westus'
  'northeurope'
])
param location string

param containerAppEnvName string = 'mycontainer-${uniqueString(resourceGroup().id)}'

param containerAppLogName string = 'mycontainer-${uniqueString(resourceGroup().id)}'
