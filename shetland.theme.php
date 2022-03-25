<?php
// This file declares a CSS theme for CiviCRM.

return [
  'name'         => 'shetland',
  'title'        => 'shetland theme',
  'prefix'       => 'shetland/',
  'url_callback' => '\\Civi\\Core\\Themes\\Resolvers::simple',
  'excludes'     => [ 'css/contactSummary.css' ], // @todo redo 'css/dashboard.css'
  'search_order' => [
    0 => 'shetland',
    1 => '_fallback_',
  ],
];
