const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

// Resolve bootstrap assets paths
const bootstrap = require('bootstrap/dist/js/bootstrap')

environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default'],
    bootstrap: bootstrap,
  })
)

module.exports = environment
