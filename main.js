const path = require('path');
require('icloud-windows-base').run({
  appName: 'Apple Podcasts',
  protocol: 'apple-podcasts',
  icloudUrl: 'https://podcasts.apple.com',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
