<?php
$f = file_get_contents('src/civicrm.scss');

$f = preg_replace_callback('/([a-z0-9-_]+)\s*:\s*([0-9.])+rem/', function($matches) {
  if ($matches[1] !== 'font-size') {
    $newRem = $matches[2]*10/16;
    return "$matches[1]: {$newRem}rem";
  }
  return $matches[0];
}, $f);

file_put_contents('src/civicrm.scss', $f);
