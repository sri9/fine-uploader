# Shared Karma configuration
modules = require './lib/modules'
allBrowsers = require './lib/browsers'

module.exports = (config, options = {}) ->
  config.set
    files: modules.mergeModules 'karmaModules', 'fuSrcBuild', 'fuIframeXssResponse', 'testHelperModules', 'fuUnit'
    basePath: ""
    autoWatch: true
    preprocessors:
        '**/*.coffee': 'coffee'
    logLevel: config.LOG_INFO
    logColors: true
    frameworks: ["mocha"]
    reporters: ["dots"]
    captureTimeout: 60000
    colors: true
