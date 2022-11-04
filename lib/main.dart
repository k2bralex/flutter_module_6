import 'package:flutter/material.dart';
//import 'package:flutter_module_6/models/list_view_divider/homepage.dart';
//import 'package:flutter_module_6/models/sliver_widgets/homepage.dart';
//import 'package:flutter_module_6/models/horizontal_list/homepage.dart';
import 'package:flutter_module_6/models/text_field_styled/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Module 6'),
    );
  }
}
