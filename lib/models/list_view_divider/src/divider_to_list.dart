import 'package:flutter/material.dart';

final listWithDivider =
    ({required List<Widget> list}) => List<Widget>.generate(
        list.length * 2 - 1,
        (index) => index.isEven
            ? list[index~/2]
            : Divider(
                thickness: 2,
              ));
