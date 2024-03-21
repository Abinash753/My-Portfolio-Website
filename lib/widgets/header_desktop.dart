import 'package:flutter/material.dart';
import 'package:my_web/styles/style.dart';
import 'package:my_web/widgets/side_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 60,
      width: double.infinity,
      decoration: kHeaderDecoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SideLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitle.length; i++)
            TextButton(
                onPressed: () {},
                child: Text(
                  navTitle[i],
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: CustomColor.whitePrimary),
                )),
        ],
      ),
    );
  }
}
