// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test/tools.dart/random_color.dart';
import 'dart:ui';

import 'package:solid_software_test/tools.dart/sufficient_text_color.dart';

void main() {
  test("Sufficient text color test 1", () {
    Color actualColor =
        SufficientTextColor.getColor(Color.fromARGB(255, 115, 155, 115));
    expect(actualColor, Color(0xFFFFFFFF));
  });

  test("Sufficient text color test 2", () {
    Color actualColor =
        SufficientTextColor.getColor(Color.fromARGB(255, 200, 200, 200));
    expect(actualColor, Color(0xFF000000));
  });

  test("Random color alpha enabled test", () {
    Color actualColor = RandomColor.getColor(enableRandomAlpha: true);
    expect(actualColor.alpha != 255, true);
  });

  test("Random color alpha disabled test", () {
    Color actualColor = RandomColor.getColor();
    expect(actualColor.alpha == 255, true);
  });

  test("Random color test", () {
    Color color1 = RandomColor.getColor();
    Color color2 = RandomColor.getColor();
    expect(color1 != color2, true);
  });
}
