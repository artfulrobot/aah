<?php
// This file declares an Angular module which can be autoloaded
// in CiviCRM. See also:
// \https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_angularModules/n
return [
  'js' => [
    'ang/shetlend.js',
    'ang/shetlend/*.js',
    'ang/shetlend/*/*.js',
  ],
  'css' => [
    'ang/shetlend.css',
  ],
  'partials' => [
    'ang/shetlend',
  ],
  'requires' => [
    'crmUi',
    'crmUtil',
    'ngRoute',
  ],
  'settings' => [],
];
