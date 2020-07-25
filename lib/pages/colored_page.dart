import 'package:flutter/material.dart';
import 'package:solid_software_test/bloc/colored_page_bloc.dart';
import 'package:solid_software_test/tools.dart/sufficient_text_color.dart';
import 'package:solid_software_test/widgets/colored_container.dart';

class ColoredPage extends StatelessWidget {
  ///Business logic of this widget. 
  ///[bloc] value should not be null.
  final ColoredPageBloc bloc;

  ///Colored page widget allows display text on a colored background, which can be changed by tap.
  ///The [bloc] parameter is required and should not be null
  ColoredPage(this.bloc) : assert(bloc != null);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Color>(
          stream: bloc.colorChanged,
          initialData: Colors.white,
          builder: (context, color) {
            return InkWell(
              onTap: bloc.changeColor,
              child: ColoredContainer(
                text: "Hi there!",
                backgrounColor: color.data ?? Colors.white,
                textColor:
                    SufficientTextColor.getColor(color.data ?? Colors.white),
              ),
            );
          }),
    );
  }
}
