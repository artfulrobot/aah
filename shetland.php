<?php

require_once 'shetlend.civix.php';
use CRM_Shetlend_ExtensionUtil as E;

/**
 * Implements hook_civicrm_config().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_config/ 
 */
function shetlend_civicrm_config(&$config) {
  _shetlend_civix_civicrm_config($config);
}

/**
 * Implements hook_civicrm_xmlMenu().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_xmlMenu
 */
function shetlend_civicrm_xmlMenu(&$files) {
  _shetlend_civix_civicrm_xmlMenu($files);
}

/**
 * Implements hook_civicrm_install().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_install
 */
function shetlend_civicrm_install() {
  _shetlend_civix_civicrm_install();
}

/**
 * Implements hook_civicrm_postInstall().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_postInstall
 */
function shetlend_civicrm_postInstall() {
  _shetlend_civix_civicrm_postInstall();
}

/**
 * Implements hook_civicrm_uninstall().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_uninstall
 */
function shetlend_civicrm_uninstall() {
  _shetlend_civix_civicrm_uninstall();
}

/**
 * Implements hook_civicrm_enable().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_enable
 */
function shetlend_civicrm_enable() {
  _shetlend_civix_civicrm_enable();
}

/**
 * Implements hook_civicrm_disable().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_disable
 */
function shetlend_civicrm_disable() {
  _shetlend_civix_civicrm_disable();
}

/**
 * Implements hook_civicrm_upgrade().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_upgrade
 */
function shetlend_civicrm_upgrade($op, CRM_Queue_Queue $queue = NULL) {
  return _shetlend_civix_civicrm_upgrade($op, $queue);
}

/**
 * Implements hook_civicrm_managed().
 *
 * Generate a list of entities to create/deactivate/delete when this module
 * is installed, disabled, uninstalled.
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_managed
 */
function shetlend_civicrm_managed(&$entities) {
  _shetlend_civix_civicrm_managed($entities);
}

/**
 * Implements hook_civicrm_caseTypes().
 *
 * Generate a list of case-types.
 *
 * Note: This hook only runs in CiviCRM 4.4+.
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_caseTypes
 */
function shetlend_civicrm_caseTypes(&$caseTypes) {
  _shetlend_civix_civicrm_caseTypes($caseTypes);
}

/**
 * Implements hook_civicrm_angularModules().
 *
 * Generate a list of Angular modules.
 *
 * Note: This hook only runs in CiviCRM 4.5+. It may
 * use features only available in v4.6+.
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_angularModules
 */
function shetlend_civicrm_angularModules(&$angularModules) {
  _shetlend_civix_civicrm_angularModules($angularModules);
}

/**
 * Implements hook_civicrm_alterSettingsFolders().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_alterSettingsFolders
 */
function shetlend_civicrm_alterSettingsFolders(&$metaDataFolders = NULL) {
  _shetlend_civix_civicrm_alterSettingsFolders($metaDataFolders);
}

/**
 * Implements hook_civicrm_entityTypes().
 *
 * Declare entity types provided by this module.
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_entityTypes
 */
function shetlend_civicrm_entityTypes(&$entityTypes) {
  _shetlend_civix_civicrm_entityTypes($entityTypes);
}

/**
 * Implements hook_civicrm_thems().
 */
function shetlend_civicrm_themes(&$themes) {
  _shetlend_civix_civicrm_themes($themes);
}

/**
 * Implements hook_civicrm_coreResourceList().
 */
function shetlend_civicrm_coreResourceList(&$items, $region) {
  if (!CRM_Shetlend::isActive()) {
    return;
  }

  if ($region == 'html-header') {
    $resources = CRM_Core_Resources::singleton();
    $resources->addStyleFile('shetlend', 'shetlend/css/bootstrap.css', -500, 'html-header');
    // $resources->addStyleFile('civicrm', 'css/crm-i.css', -500, 'html-header');
    // Seems we do not need this: $resources->addStyleFile('shetlend', 'shetlend/css/civicrm.css', 99, 'html-header');

    //CRM_Core_Resources::singleton()->addScriptFile('org.civicrm.shoreditch', 'base/js/modal.js', 1000, 'html-header');
    //CRM_Core_Resources::singleton()->addScriptFile('org.civicrm.shoreditch', 'base/js/button.js', 1000, 'html-header');
    ////CRM_Core_Resources::singleton()->addScriptFile('org.civicrm.shoreditch', 'js/noConflict.js', 1001, 'html-header');

    $resources->addScriptFile('shetlend', 'shetlend/js/bootstrap.js', 1000, 'html-header');
    $resources->addScriptFile('shetlend', 'shetlend/js/shetlend.js', 1000, 'html-header');
  }
}

/**
 * Implements hook_civicrm_pageRun().
 *
 * @todo do for form pages
 *
 * We add various classes to the body element which enables our CSS to work.
 *
 * - always added: "shetlend-theme", "bootstrap3"
 * - URL path, e.g. civicrm-contact-view
 * - URL path, e.g. civicrm-contact-view
 * - page name, e.g. crm-name-crm-case-page-tab
 *
 */
function shetlend_civicrm_pageRun(&$page) {

}

/**
 */
function shetlend_civicrm_alterContent(  &$content, $context, $tplName, &$object ) {

  if (!CRM_Shetlend::isActive()) {
    // Don't do anything if we're not supposed to be active (then why were we called?)
    return;
  }

  // Don't mess with ajax requests!
  $is_ajax = (strtolower($_SERVER['HTTP_X_REQUESTED_WITH'] ?? '') === 'xmlhttprequest');
  if ($is_ajax) {
    return;
  }

  $classes = ['crm-name-' . $object->getVar('_name'), implode('-', $object->urlPath)];
  $safeClasses = '"shetlend-theme", "bootstrap3"';
  foreach ($classes as $_) {
    $_ = strtolower(preg_replace('/[^a-zA-Z0-9-]+/', '-', $_));
    if ($_) {
      $safeClasses .= ", '$_'";
    }
  }
  $script = "document.addEventListener('DOMContentLoaded', function() { document.body.classList.add($safeClasses); });console.warn('running $context for $tplName');";
  $content = "<div class='shetlend-wrapper'>$content</div><script>$script</script>";

  // CRM_Core_Resources::singleton()->addScript($script);

  //if ($pageName == 'CRM_Contact_Page_View_Summary')
    // CRM_Core_Resources::singleton()->addScriptFile('shetlend', 'js/contact-summary.js');

}
