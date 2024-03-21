import 'package:flutter/material.dart';

import '../constants/colors.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
  gradient: const LinearGradient(colors: [
    Color.fromARGB(255, 105, 105, 105),
    Colors.orange,
    CustomColor.bgLight1,
    //CustomColor.bgLight2
  ]),
  borderRadius: BorderRadius.circular(100),
);
