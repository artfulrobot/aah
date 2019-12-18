<?php

class CRM_Aah {
  /** @var string */
  static $isActive;

  /**
   * @return TRUE if Aah is active.
   */
  public static function isActive() {
    if (!isset(static::$isActive)) {
      static::$isActive = Civi::service('themes')->getActiveThemeKey() === 'aah';
    }
    return static::$isActive;
  }
}
