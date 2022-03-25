<?php
// This file declares a CSS theme for CiviCRM.

return [
  'name'         => 'shetlend',
  'title'        => 'shetlend theme',
  'prefix'       => 'shetlend/',
  'url_callback' => '\\Civi\\Core\\Themes\\Resolvers::simple',
  'excludes'     => [ 'css/contactSummary.css' ], // @todo redo 'css/dashboard.css'
  'search_order' => [
    0 => 'shetlend',
    1 => '_fallback_',
  ],
];
