process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

environment.config.merge({
  entry: {
    application: './app/javascript/packs/application.js'
  }
});

module.exports = environment.toWebpackConfig();