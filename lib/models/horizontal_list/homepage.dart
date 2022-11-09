import 'package:flutter/material.dart';
import 'package:flutter_module_6/models/horizontal_list/src/colored_box_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

///Create colored box widget [MyColoredBox] and get list of this widgets
///[getColoredBoxList] passing [Color] to get color pallet
///To find [SizedBox] height [MediaQuery] and ternary operator used
///In [LayoutBuilder] to find width used [BoxConstraints] and define scroll
///direction
/*class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SizedBox(
          height:
              MediaQuery.of(context).size.width > 500 ? double.infinity : 120,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              var width = constraints.constrainWidth();
              return ListView(
                scrollDirection: width > 500 ? Axis.vertical : Axis.horizontal,
                children: getColoredBoxList(Colors.green),
              );
            },
          ),
        ),
      ),
    );
  }
}*/

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: SizedBox(
            height:
            MediaQuery.of(context).size.width > 500 ? double.infinity : 120,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                var width = constraints.constrainWidth();
                return ListView(
                  scrollDirection: width > 500 ? Axis.vertical : Axis.horizontal,
                  children: getColoredBoxList(Colors.green),
                );
              },
            ),
          ),
    );
  }
}

