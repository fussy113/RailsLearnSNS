const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
const vue =  require('./loaders/vue')

environment.plugins.set(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Tether: 'tether',
        'window.Tether': 'tether',
        Popper: ['popper.js', 'default']
    })
)

environment.loaders.append('vue', vue)
module.exports = environment
