try
  apiKey = Meteor.settings.proxyBonanza.api_key
catch error
  console.log("***ProxyBonanza: You need to provide a proxybonanza API key")

options =
  headers:
    "Authorization": apiKey

Meteor.methods
  'getUserPackages': () ->
    @unblock()
    apiUrl = "https://api.proxybonanza.com/v1/userpackages.json"
    try
      result = HTTP.call "GET", apiUrl, options
      return result
    catch error
      return error
    return

  'getPackageDetail': (packageId) ->
    check(packageId, String)
    @unblock()
    apiUrl = "https://api.proxybonanza.com/v1/userpackages/#{packageId}.json"
    try
      result = HTTP.call "GET", apiUrl, options
      return result
    catch error
      return error
    return

  'getAuthIps': () ->
    @unblock()
    apiUrl = "https://api.proxybonanza.com/v1/authips.json"
    try
      result = HTTP.call "GET", apiUrl, options
      return result
    catch error
      return error
    return

  'addNewAuthIPtoPackage': (packageId, newIP) ->
    check(packageId, String)
    check(newIP, String)
    @unblock()
    apiUrl = "https://api.proxybonanza.com/v1/authips.json"
    options.data =
      ip: newIP
      userpackage_id: packageId

    try
      result = HTTP.call "POST", apiUrl, options
      return result
    catch error
      return error
    return

  'deleteAuthIPfromPackage': (ipId) ->
    check(ipId, String)
    @unblock()
    apiUrl = "https://api.proxybonanza.com/v1/authips/#{ipId}.json"
    try
      result = HTTP.del apiUrl, options
      return result
    catch error
      return error
    return

  'getPackageDailyStats': (packageId) ->
    check(packageId, String)
    @unblock()
    apiUrl = "https://api.proxybonanza.com/v1/userpackagedailystats/#{packageId}.json"
    try
      result = HTTP.call "GET", apiUrl, options
      return result
    catch error
      return error
    return

  'getPackageHourlyStats': (packageId) ->
    check(packageId, String)
    @unblock()
    apiUrl = "https://api.proxybonanza.com/v1/userpackagehourlystats/#{packageId}.json"
    try
      result = HTTP.call "GET", apiUrl, options
      return result
    catch error
      return error
    return
