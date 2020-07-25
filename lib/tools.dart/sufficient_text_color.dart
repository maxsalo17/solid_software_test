import 'dart:ui';

class SufficientTextColor {

  ///The method that returns black or white color, depending on the background [color].
  static Color getColor(Color color) {
    //This formula was used according to StackOverflow thread 
    //https://stackoverflow.com/questions/3942878/how-to-decide-font-color-in-white-or-black-depending-on-background-color
    if (color.red * 0.299 + color.green * 0.578 + color.blue * 0.114 > 160) {
      return Color(0xFF000000);
    } else {
      return Color(0xFFFFFFFF);
    }
  }
}
