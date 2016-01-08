Package.describe({
  name: 'garbolino:meteor-proxybonanza',
  version: '0.0.1',
  summary: 'A Meteor package designed to easily handle ProxyBonanza API request.',
  git: 'https://github.com/garbolino/meteor-proxybonanza.git',
  author: "Orlando Martinez <orlando@rollingmute.com>",
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.2.1');
  api.use('ecmascript');
  api.use('http');
  api.use('check');
  api.use('coffeescript');
  api.addFiles('meteor-proxybonanza.coffee', ['server']);
});

Package.onTest(function(api) {
  api.use('ecmascript');
  api.use('tinytest');
  api.use('garbolino:meteor-proxybonanza');
  api.addFiles('meteor-proxybonanza-tests.js');
});
