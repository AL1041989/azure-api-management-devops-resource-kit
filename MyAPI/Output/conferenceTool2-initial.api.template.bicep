param ApimServiceName string

resource ApimServiceName_conferenceTool2 'Microsoft.ApiManagement/service/apis@2021-01-01-preview' = {
  properties: {
    apiVersionSetId: resourceId('Microsoft.ApiManagement/service/apiVersionSets', ApimServiceName, 'myVersionSetID')
    path: 'myAPIPet/e655354c4f6141cca3605fd94e4db8af'
    value: '{\r\n  "swagger": "2.0",\r\n  "info": {\r\n    "version": "1.0.0",\r\n    "title": "Swagger Petstore",\r\n    "description": "A sample API that uses a petstore as an example to demonstrate features in the swagger-2.0 specification",\r\n    "termsOfService": "http://swagger.io/terms/",\r\n    "contact": {\r\n      "name": "Swagger API Team",\r\n      "email": "apiteam@swagger.io",\r\n      "url": "http://swagger.io"\r\n    },\r\n    "license": {\r\n      "name": "Apache 2.0",\r\n      "url": "https://www.apache.org/licenses/LICENSE-2.0.html"\r\n    }\r\n  },\r\n  "host": "petstore.swagger.io",\r\n  "basePath": "/api",\r\n  "schemes": [\r\n    "http"\r\n  ],\r\n  "consumes": [\r\n    "application/json"\r\n  ],\r\n  "produces": [\r\n    "application/json"\r\n  ],\r\n  "paths": {\r\n    "/pets": {\r\n      "get": {\r\n        "description": "Returns all pets from the system that the user has access to\\nNam sed condimentum est. Maecenas tempor sagittis sapien, nec rhoncus sem sagittis sit amet. Aenean at gravida augue, ac iaculis sem. Curabitur odio lorem, ornare eget elementum nec, cursus id lectus. Duis mi turpis, pulvinar ac eros ac, tincidunt varius justo. In hac habitasse platea dictumst. Integer at adipiscing ante, a sagittis ligula. Aenean pharetra tempor ante molestie imperdiet. Vivamus id aliquam diam. Cras quis velit non tortor eleifend sagittis. Praesent at enim pharetra urna volutpat venenatis eget eget mauris. In eleifend fermentum facilisis. Praesent enim enim, gravida ac sodales sed, placerat id erat. Suspendisse lacus dolor, consectetur non augue vel, vehicula interdum libero. Morbi euismod sagittis libero sed lacinia.\\n\\nSed tempus felis lobortis leo pulvinar rutrum. Nam mattis velit nisl, eu condimentum ligula luctus nec. Phasellus semper velit eget aliquet faucibus. In a mattis elit. Phasellus vel urna viverra, condimentum lorem id, rhoncus nibh. Ut pellentesque posuere elementum. Sed a varius odio. Morbi rhoncus ligula libero, vel eleifend nunc tristique vitae. Fusce et sem dui. Aenean nec scelerisque tortor. Fusce malesuada accumsan magna vel tempus. Quisque mollis felis eu dolor tristique, sit amet auctor felis gravida. Sed libero lorem, molestie sed nisl in, accumsan tempor nisi. Fusce sollicitudin massa ut lacinia mattis. Sed vel eleifend lorem. Pellentesque vitae felis pretium, pulvinar elit eu, euismod sapien.\\n",\r\n        "operationId": "findPets",\r\n        "parameters": [\r\n          {\r\n            "name": "tags",\r\n            "in": "query",\r\n            "description": "tags to filter by",\r\n            "required": false,\r\n            "type": "array",\r\n            "collectionFormat": "csv",\r\n            "items": {\r\n              "type": "string"\r\n            }\r\n          },\r\n          {\r\n            "name": "limit",\r\n            "in": "query",\r\n            "description": "maximum number of results to return",\r\n            "required": false,\r\n            "type": "integer",\r\n            "format": "int32"\r\n          }\r\n        ],\r\n        "responses": {\r\n          "200": {\r\n            "description": "pet response",\r\n            "schema": {\r\n              "type": "array",\r\n              "items": {\r\n                "$ref": "#/definitions/Pet"\r\n              }\r\n            }\r\n          },\r\n          "default": {\r\n            "description": "unexpected error",\r\n            "schema": {\r\n              "$ref": "#/definitions/Error"\r\n            }\r\n          }\r\n        }\r\n      },\r\n      "post": {\r\n        "description": "Creates a new pet in the store.  Duplicates are allowed",\r\n        "operationId": "addPet",\r\n        "parameters": [\r\n          {\r\n            "name": "pet",\r\n            "in": "body",\r\n            "description": "Pet to add to the store",\r\n            "required": true,\r\n            "schema": {\r\n              "$ref": "#/definitions/NewPet"\r\n            }\r\n          }\r\n        ],\r\n        "responses": {\r\n          "200": {\r\n            "description": "pet response",\r\n            "schema": {\r\n              "$ref": "#/definitions/Pet"\r\n            }\r\n          },\r\n          "default": {\r\n            "description": "unexpected error",\r\n            "schema": {\r\n              "$ref": "#/definitions/Error"\r\n            }\r\n          }\r\n        }\r\n      }\r\n    },\r\n    "/pets/{id}": {\r\n      "get": {\r\n        "description": "Returns a user based on a single ID, if the user does not have access to the pet",\r\n        "operationId": "find pet by id",\r\n        "parameters": [\r\n          {\r\n            "name": "id",\r\n            "in": "path",\r\n            "description": "ID of pet to fetch",\r\n            "required": true,\r\n            "type": "integer",\r\n            "format": "int64"\r\n          }\r\n        ],\r\n        "responses": {\r\n          "200": {\r\n            "description": "pet response",\r\n            "schema": {\r\n              "$ref": "#/definitions/Pet"\r\n            }\r\n          },\r\n          "default": {\r\n            "description": "unexpected error",\r\n            "schema": {\r\n              "$ref": "#/definitions/Error"\r\n            }\r\n          }\r\n        }\r\n      },\r\n      "delete": {\r\n        "description": "deletes a single pet based on the ID supplied",\r\n        "operationId": "deletePet",\r\n        "parameters": [\r\n          {\r\n            "name": "id",\r\n            "in": "path",\r\n            "description": "ID of pet to delete",\r\n            "required": true,\r\n            "type": "integer",\r\n            "format": "int64"\r\n          }\r\n        ],\r\n        "responses": {\r\n          "204": {\r\n            "description": "pet deleted"\r\n          },\r\n          "default": {\r\n            "description": "unexpected error",\r\n            "schema": {\r\n              "$ref": "#/definitions/Error"\r\n            }\r\n          }\r\n        }\r\n      }\r\n    }\r\n  },\r\n  "definitions": {\r\n    "Pet": {\r\n      "type": "object",\r\n      "allOf": [\r\n        {\r\n          "$ref": "#/definitions/NewPet"\r\n        },\r\n        {\r\n          "required": [\r\n            "id"\r\n          ],\r\n          "properties": {\r\n            "id": {\r\n              "type": "integer",\r\n              "format": "int64"\r\n            }\r\n          }\r\n        }\r\n      ]\r\n    },\r\n    "NewPet": {\r\n      "type": "object",\r\n      "required": [\r\n        "name"\r\n      ],\r\n      "properties": {\r\n        "name": {\r\n          "type": "string"\r\n        },\r\n        "tag": {\r\n          "type": "string"\r\n        }\r\n      }\r\n    },\r\n    "Error": {\r\n      "type": "object",\r\n      "required": [\r\n        "code",\r\n        "message"\r\n      ],\r\n      "properties": {\r\n        "code": {\r\n          "type": "integer",\r\n          "format": "int32"\r\n        },\r\n        "message": {\r\n          "type": "string"\r\n        }\r\n      }\r\n    }\r\n  }\r\n}'
    format: 'swagger-json'
  }
  name: '${ApimServiceName}/conferenceTool2'
  dependsOn: []
}