___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "PropellerAds Visitor ID",
  "description": "Variable containing a value of the \u003cb\u003e${SUBID}\u003c/b\u003e macro of your campaign\u0027s URL. More info at https://help.propellerads.com/en/articles/1954809-how-to-integrate-propellerads-s2s-conversion-tracking.",
  "containerContexts": [
    "WEB"
  ],
  "categories": ["ADVERTISING", "ANALYTICS", "CONVERSIONS", "MARKETING", "REMARKETING"]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "visitorIdQueryParameterName",
    "displayName": "Visitor ID query parameter name",
    "simpleValueType": true,
    "defaultValue": "clickid",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "STRING_LENGTH",
        "args": [
          1,
          50
        ],
        "errorMessage": "The value must be a name of a query parameter containing the value of the \u003cb\u003e${SUBID}\u003c/b\u003e macro of your campaign\u0027s URL."
      }
    ],
    "valueHint": "clickid",
    "lineCount": 1,
    "help": "Visitor ID query parameter name is a name of a query parameter containing the value of the \u003cb\u003e${SUBID}\u003c/b\u003e macro of your campaign\u0027s URL.",
    "alwaysInSummary": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const queryPermission = require('queryPermission');
const getUrl = require('getUrl');

const visitorIdQueryParameterName = data.visitorIdQueryParameterName;

if (queryPermission('get_url', 'query', visitorIdQueryParameterName)) {
  return getUrl('query', false, null, visitorIdQueryParameterName);
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "query",
          "value": {
            "type": 8,
            "boolean": true
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 17.11.2021, 08:31:34
