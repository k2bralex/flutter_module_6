import 'package:flutter/material.dart';
import 'package:flutter_module_6/models/horizontal_list/homepage.dart';

class MyAppTabs extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    const Tab(
      text: 'Task 1',
    ),
    const Tab(
      text: 'Task 2',
    ),
  ];

  MyAppTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
          body: const TabBarView(
            children: [MyHomePage(title: 'asdasd',), MyHomePage(title: 'asdasd')],
          ),
        ));
  }
}
