import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SideLogo extends StatelessWidget {
  const SideLogo({super.key, this.onTap});
  //
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Abhinash",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: CustomColor.yellowSecondary),
      ),
    );
  }
}
