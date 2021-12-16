param ApimServiceName string

resource ApimServiceName_conferenceTool 'Microsoft.ApiManagement/service/apis@2021-01-01-preview' = {
  properties: {
    apiVersionSetId: resourceId('Microsoft.ApiManagement/service/apiVersionSets', ApimServiceName, 'myVersionSetID')
    path: 'myAPIPet/743cf2b6bba2414bbbcece87b150105d'
    value: 'https://conferenceapi.azurewebsites.net/?format=json'
    format: 'swagger-link-json'
  }
  name: '${ApimServiceName}/conferenceTool'
  dependsOn: []
}