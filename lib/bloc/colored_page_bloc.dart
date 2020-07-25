import 'dart:async';

import 'dart:ui';

import 'package:solid_software_test/tools.dart/random_color.dart';

class ColoredPageBloc{
  ///This bloc class contains the business logic of the [ColoredPage] widget. 
  ///Set the value of the [initialColor] parameter for the initial background color.
  ColoredPageBloc({Color initialColor}){
    _colorController.add(initialColor);
  }

  final _colorController = StreamController<Color>();

  ///A stream that contains background color value changes
  Stream<Color> get colorChanged => _colorController.stream;

  ///A method that changes the background color to a random color.
  changeColor() {
    _colorController.sink.add(RandomColor.getColor());
  }

  dispose() {
    _colorController.close();
  }
}
