#Meteor ProxyBonanza API
A Meteor package designed to easily handle ProxyBonanza API request.

## <a name="install"></a> Install

* meteor add garbolino:meteor-proxybonanza

## <a name="dependencies"></a> Dependencies
* http
* coffeescript
* check

##<a name="usage"></a>  Usage
Add to Meteor Settings your ProxyBonanza API key:
  Meteor.settings.proxyBonanza.api_key

* Meteor.call('getUserPackages')
  -  GET https://api.proxybonanza.com/v1/userpackages.json
  -  List of active proxy plans in user account.
* Meteor.call('getPackageDetail', packageId)
  -  GET https://api.proxybonanza.com/v1/userpackages/[userpackage ID].json
  -  Details of proxy plan including list of proxy IPs.
* Meteor.call('getAuthIps')
  -  GET https://api.proxybonanza.com/v1/authips.json
  -  List of all authentication IPs in user account.
* Meteor.call('addNewAuthIPtoPackage', packageId, newIP)
  -  POST https://api.proxybonanza.com/v1/authips.json
  -  Add new authentication IP to proxy plan. POST parameters: ip, userpackage_id. Returns ID of created authentication IP.
* Meteor.call('deleteAuthIPfromPackage', ip)
  -  DELETE https://api.proxybonanza.com/v1/authips/[auth IP ID].json
  -  Remove authentication IP from proxy plan.
* Meteor.call('getPackageDailyStats', packageId)
  -  GET https://api.proxybonanza.com/v1/userpackagedailystats/[userpackage ID].json
  -  Data transfer usage stats for the last 30 days.
* Meteor.call('getPackageHourlyStats', packageId)
  -  GET https://api.proxybonanza.com/v1/userpackagehourlystats/[userpackage ID].json
  -  Data transfer for the last 24 hours.

##<a name="todo"></a>  TODO
* Tests
