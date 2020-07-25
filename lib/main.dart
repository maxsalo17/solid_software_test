import 'package:flutter/material.dart';
import 'package:solid_software_test/bloc/colored_page_bloc.dart';
import 'package:solid_software_test/pages/colored_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Max Salo. Solid Software 2020 Test',
      debugShowCheckedModeBanner: false,
      home: ColoredPage(ColoredPageBloc(initialColor: Colors.yellow)),
    );
  }
}
