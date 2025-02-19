param location string = 'eastus'
@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

module app './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'github-actions-weather-api'
    environment: environment
    location: location
  }
}
