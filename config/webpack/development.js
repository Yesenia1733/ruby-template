process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

// Add the following lines
const webpack = require("webpack")

environment.plugins.append('Provide', new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    jquery: 'jquery',
    'window.jQuery': 'jquery',
    Popper: ['popper.js', 'default']
}))
// End new addition

module.exports = environment.toWebpackConfig()
