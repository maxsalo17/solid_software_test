import 'dart:math';

import 'dart:ui';

class RandomColor {
  ///A method that allows to get a random color. 
  ///If [enableRandomAlpha = true], then the alpha color value will also be generated randomly.
  static Color getColor({bool enableRandomAlpha = false}) {
    final int red = _getRandomValue(256);
    final int green = _getRandomValue(256);
    final int blue = _getRandomValue(256);
    final int alpha = enableRandomAlpha ? _getRandomValue(256) : 255;
    return Color.fromARGB(alpha, red, green, blue);
  }

  static int _getRandomValue(int maxValue) {
    return Random().nextInt(maxValue);
  }
}

