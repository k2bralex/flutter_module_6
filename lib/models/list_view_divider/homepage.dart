import 'package:flutter/material.dart';

import 'src/divider_to_list.dart';
import 'src/list_generator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

///Generate list of [ListTile] than generate new list and insert [Divider] on
/// odd index position
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: listWithDivider(list: listGenerator(100)),
        ),
      ),
    );
  }
}
