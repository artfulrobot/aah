<?php

class CRM_Shetland {
  /** @var string */
  static $isActive;

  /**
   * @return TRUE if Shetland is active.
   */
  public static function isActive() {
    if (!isset(static::$isActive)) {
      static::$isActive = Civi::service('themes')->getActiveThemeKey() === 'shetland';
    }
    return static::$isActive;
  }
}
