@description('Name of the API Management')
param ApimServiceName string

@description('Base URL of the repository')
param LinkedTemplatesBaseUrl string

module versionSetTemplate 'apim-dev-euw-apif-apiVersionSets.template.bicep' = {
  name: 'versionSetTemplate'
  params: {
    ApimServiceName: ApimServiceName
  }
  dependsOn: []
}

module conferenceTool_InitialAPITemplate 'conferenceTool-initial.api.template.bicep' = {
  name: 'conferenceTool-InitialAPITemplate'
  params: {
    ApimServiceName: ApimServiceName
  }
  dependsOn: [
    versionSetTemplate
  ]
}

module conferenceTool_SubsequentAPITemplate 'conferenceTool-subsequent.api.template.bicep' = {
  name: 'conferenceTool-SubsequentAPITemplate'
  params: {
    ApimServiceName: ApimServiceName
  }
  dependsOn: [
    conferenceTool_InitialAPITemplate
  ]
}

module conferenceTool2_InitialAPITemplate 'conferenceTool2-initial.api.template.bicep' = {
  name: 'conferenceTool2-InitialAPITemplate'
  params: {
    ApimServiceName: ApimServiceName
  }
  dependsOn: [
    versionSetTemplate
    conferenceTool_SubsequentAPITemplate
  ]
}

module conferenceTool2_SubsequentAPITemplate 'conferenceTool2-subsequent.api.template.bicep' = {
  name: 'conferenceTool2-SubsequentAPITemplate'
  params: {
    ApimServiceName: ApimServiceName
  }
  dependsOn: [
    conferenceTool2_InitialAPITemplate
  ]
}