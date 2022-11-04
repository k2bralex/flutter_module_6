import 'package:flutter/material.dart';

final listGenerator = (int length) => List<Widget>.generate(
    length,
    (index) => ListTile(
            title: Text("$index"),));
