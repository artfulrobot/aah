let mix = require('laravel-mix');

mix
  .js('src/bootstrap.js', 'shetland/js/')
  .js('src/shetland.js', 'shetland/js/')
  .sass('src/bootstrap.scss', 'shetland/css/')
  .sass('src/civicrm.scss', 'shetland/css/')
  .sass('src/dashboard.scss', 'shetland/css/')
  .sourceMaps(false, 'source-map')
  .options({ processCssUrls: false })
;
