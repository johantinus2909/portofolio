<?php

/** This file is part of KCFinder project
  *
  *      @desc Abstract image driver class
  *   @package KCFinder
  *   @version 3.12
  *    @author Pavel Tzonkov <sunhater@sunhater.com>
  * @copyright 2010-2014 KCFinder Project
  *   @license http://opensource.org/licenses/GPL-3.0 GPLv3
  *   @license http://opensource.org/licenses/LGPL-3.0 LGPLv3
  *      @link http://kcfinder.sunhater.com
  */

  namespace kcfinder;

  abstract class image {
      protected const DEFAULT_JPEG_QUALITY = 75;
  
      protected $image;
      protected $width;
      protected $height;
      protected $initError = false;
      protected $options = array();
  
      final public function __get($property) {
          return property_exists($this, $property) ? $this->$property : null;
      }
  
      public function __construct($image, array $options = array()) {
          $this->image = $this->width = $this->height = null;
          $imageDetails = $this->buildImage($image);
  
          if ($imageDetails !== false) {
              list($this->image, $this->width, $this->height) = $imageDetails;
          } else {
              throw new \Exception("Failed to initialize image.");
          }
          $this->options = $options;
      }
  
      final static function factory($driver, $image, array $options = array()) {
          $class = __NAMESPACE__ . "\\image_$driver";
          return new $class($image, $options);
      }
  
      final static function getDriver(array $drivers = array('gd')) {
          foreach ($drivers as $driver) {
              if (!preg_match('/^[a-z0-9\_]+$/i', $driver)) continue;
              $class = __NAMESPACE__ . "\\image_$driver";
              if (class_exists($class) && method_exists($class, "available")) {
                  if ($class::available()) return $driver;
              }
          }
          return false;
      }
  
      final protected function buildImage($image) {
          $class = get_class($this);
          
  
          if ($image instanceof $class) {
              $width = $image->width;
              $height = $image->height;
              $img = $image->image;
          } elseif (is_array($image)) {
              $keys = array_keys($image);
              $width = $image[$keys[0]];
              $height = $image[$keys[1]];
              $img = $this->getBlankImage($width, $height);
          } else {
              $img = $this->getImage($image, $width, $height);
          }
  
          return ($img !== false) ? array($img, $width, $height) : false;
      }
  
      final public function getPropWidth($resizedHeight) {
          $width = round(($this->width * $resizedHeight) / $this->height);
          return $width ? $width : 1;
      }
  
      final public function getPropHeight($resizedWidth) {
          $height = round(($this->height * $resizedWidth) / $this->width);
          return $height ? $height : 1;
      }
  
      abstract static function available();
      abstract static function checkImage($file);
  
      abstract public function resize($width, $height);
      abstract public function resizeFit($width, $height, $background = false);
      abstract public function resizeCrop($width, $height, $offset = false);
      abstract public function rotate($angle, $background = "#000000");
      abstract public function flipHorizontal();
      abstract public function flipVertical();
      abstract public function watermark($file, $left = false, $top = false);
      abstract public function output($type = 'jpeg', array $options = array());
  
      abstract protected function getBlankImage($width, $height);
      abstract protected function getImage($image, &$width, &$height);
  }
  