import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  ///Text to be displayed.
  final String text;
  
  ///Container background color value.
  final Color backgrounColor;

  ///Text color value.
  final Color textColor;

  ///Colored container widget contains text on a colored background.
  ColoredContainer(
      {this.text,
      this.backgrounColor = Colors.white,
      this.textColor = Colors.black});

  @override    
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      color: backgrounColor,
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            this.text ?? "",
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: textColor),
          ),
          Text(
            "Color( red: ${backgrounColor.red}, green: ${backgrounColor.green}, blue: ${backgrounColor.blue} )",
            style: TextStyle(fontWeight: FontWeight.w600, color: textColor),
          )
        ],
      )),
    );
  }
}
