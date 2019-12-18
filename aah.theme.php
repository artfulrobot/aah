<?php
// This file declares a CSS theme for CiviCRM.

return [
  'name'         => 'aah',
  'title'        => 'aah theme',
  'prefix'       => 'aah/',
  'url_callback' => '\\Civi\\Core\\Themes\\Resolvers::simple',
  'excludes'     => [ 'css/contactSummary.css' ],
  'search_order' => [
    0 => 'aah',
    1 => '_fallback_',
  ],
];
