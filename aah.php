<?php

require_once 'aah.civix.php';
use CRM_Aah_ExtensionUtil as E;

/**
 * Implements hook_civicrm_config().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_config/ 
 */
function aah_civicrm_config(&$config) {
  _aah_civix_civicrm_config($config);
}

/**
 * Implements hook_civicrm_install().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_install
 */
function aah_civicrm_install() {
  _aah_civix_civicrm_install();
}

/**
 * Implements hook_civicrm_enable().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_enable
 */
function aah_civicrm_enable() {
  _aah_civix_civicrm_enable();
}

/**
 * Implements hook_civicrm_coreResourceList().
 */
function aah_civicrm_coreResourceList(&$items, $region) {
  if (!CRM_Aah::isActive()) {
    return;
  }

  if ($region == 'html-header') {
    $resources = CRM_Core_Resources::singleton();
    $resources->addStyleFile('aah', 'aah/css/bootstrap.css', -500, 'html-header');
    // $resources->addStyleFile('civicrm', 'css/crm-i.css', -500, 'html-header');
    // Seems we do not need this: $resources->addStyleFile('aah', 'aah/css/civicrm.css', 99, 'html-header');

    //CRM_Core_Resources::singleton()->addScriptFile('org.civicrm.shoreditch', 'base/js/modal.js', 1000, 'html-header');
    //CRM_Core_Resources::singleton()->addScriptFile('org.civicrm.shoreditch', 'base/js/button.js', 1000, 'html-header');
    ////CRM_Core_Resources::singleton()->addScriptFile('org.civicrm.shoreditch', 'js/noConflict.js', 1001, 'html-header');

    $resources->addScriptFile('aah', 'aah/js/bootstrap.js', 1000, 'html-header');
    $resources->addScriptFile('aah', 'aah/js/aah.js', 1000, 'html-header');
  }
}

/**
 */
function aah_civicrm_alterContent(  &$content, $context, $tplName, &$object ) {

  if (!CRM_Aah::isActive()) {
    // Don't do anything if we're not supposed to be active (then why were we called?)
    return;
  }

  // Don't mess with ajax requests!
  $is_ajax = (strtolower($_SERVER['HTTP_X_REQUESTED_WITH'] ?? '') === 'xmlhttprequest');
  if ($is_ajax) {
    return;
  }

  $classes = ['crm-name-' . $object->getVar('_name'), implode('-', $object->urlPath)];
  $safeClasses = '"aah-theme", "bootstrap3"';
  foreach ($classes as $_) {
    $_ = strtolower(preg_replace('/[^a-zA-Z0-9-]+/', '-', $_));
    if ($_) {
      $safeClasses .= ", '$_'";
    }
  }
  $script = "document.addEventListener('DOMContentLoaded', function() { document.body.classList.add($safeClasses); });console.warn('running $context for $tplName');";
  $content = "<div class='aah-wrapper'>$content</div><script>$script</script>";

  // CRM_Core_Resources::singleton()->addScript($script);

  //if ($pageName == 'CRM_Contact_Page_View_Summary')
    // CRM_Core_Resources::singleton()->addScriptFile('aah', 'js/contact-summary.js');

}
