
if Meteor.isServer
  Tinytest.add 'Meteor ProxyBonanza apiKey', (test) ->
    apiKey = Meteor.settings.proxyBonanza?.api_key
    isString = typeof(apiKey) is 'string'
    test.equal isString, true, "There is not proxyBonanza api key value as string"
    return

  Tinytest.add 'Meteor ProxyBonanza validApiKey', (test) ->
    apiKey = Meteor.settings.proxyBonanza?.api_key
    makeRequest = Meteor.call "getUserPackages"
    responseCode = makeRequest.statusCode
    test.equal responseCode, 200, "You need to provide a valid proxyBonanza api key"
    return
