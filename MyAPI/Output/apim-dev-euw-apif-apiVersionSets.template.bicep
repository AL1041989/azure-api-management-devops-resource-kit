param ApimServiceName string

resource ApimServiceName_myVersionSetID 'Microsoft.ApiManagement/service/apiVersionSets@2021-01-01-preview' = {
  properties: {
    displayName: 'myAPIVersionSet'
    description: 'a description'
    versionQueryName: 'versionQuery'
    versionHeaderName: 'versionHeader'
    versioningScheme: 'Query'
  }
  name: '${ApimServiceName}/myVersionSetID'
  dependsOn: []
}