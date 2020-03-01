<?php
// This does maths on all the rem font sizes. Because aah started with a 16px
// rem size, but then bootstrap 3 insists on a 10px rem size, we had to adjust.
// Script kept in case it is useful in future.
exit; // remove this in development if you want to use it.
$c = function ($m) {
  return round($m[1]*1.6,5) . 'rem';
};
$src = file_get_contents('civicrm.scss');
$dest = preg_replace_callback('/(\d+(?:\.\d+)?)(\s?rem)/', $c, $src);
file_put_contents('civicrm.scss', $dest);
