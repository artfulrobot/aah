<?php
// This file declares an Angular module which can be autoloaded
// in CiviCRM. See also:
// \https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_angularModules/n
return [
  'js' => [
    'ang/shetland.js',
    'ang/shetland/*.js',
    'ang/shetland/*/*.js',
  ],
  'css' => [
    'ang/shetland.css',
  ],
  'partials' => [
    'ang/shetland',
  ],
  'requires' => [
    'crmUi',
    'crmUtil',
    'ngRoute',
  ],
  'settings' => [],
];
