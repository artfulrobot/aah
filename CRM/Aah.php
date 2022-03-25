<?php

class CRM_Shetlend {
  /** @var string */
  static $isActive;

  /**
   * @return TRUE if Shetlend is active.
   */
  public static function isActive() {
    if (!isset(static::$isActive)) {
      static::$isActive = Civi::service('themes')->getActiveThemeKey() === 'shetlend';
    }
    return static::$isActive;
  }
}
