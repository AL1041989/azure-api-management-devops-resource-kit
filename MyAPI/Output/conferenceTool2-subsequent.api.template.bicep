param ApimServiceName string

resource ApimServiceName_conferenceTool2 'Microsoft.ApiManagement/service/apis@2021-01-01-preview' = {
  properties: {
    apiVersion: 'v1'
    isCurrent: false
    apiVersionDescription: 'My first version'
    apiVersionSetId: resourceId('Microsoft.ApiManagement/service/apiVersionSets', ApimServiceName, 'myVersionSetID')
    subscriptionRequired: false
    displayName: 'conferenceTool2'
    path: 'myAPIPet'
    protocols: [
      'https'
    ]
  }
  name: '${ApimServiceName}/conferenceTool2'
  dependsOn: []
}

resource ApimServiceName_starter_conferenceTool2 'Microsoft.ApiManagement/service/products/apis@2021-01-01-preview' = {
  name: '${ApimServiceName}/starter/conferenceTool2'
  dependsOn: [
    ApimServiceName_conferenceTool2
  ]
}