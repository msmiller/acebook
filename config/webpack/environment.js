const { environment } = require('@rails/webpacker')

// https://medium.com/michelada-io/from-the-asset-pipeline-to-webpack-ce5a4bc323a9
const webpack = require('webpack');
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  jquery: 'jquery',
  'window.jQuery': 'jquery'
}));
// end

module.exports = environment
