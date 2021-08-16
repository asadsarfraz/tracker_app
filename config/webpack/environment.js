const { environment } = require('@rails/webpacker')

const { IgnorePlugin } = require('webpack');

const optionalPlugins = [];
if (process.platform !== "darwin") {
  optionalPlugins.push(new IgnorePlugin({ resourceRegExp: /^fsevents$/ }));
}

module.exports = {
  // other webpack config options here...
  plugins: [
    ...optionalPlugins,
  ],
};

module.exports = environment
