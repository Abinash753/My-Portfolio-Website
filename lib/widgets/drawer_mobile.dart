import 'package:flutter/material.dart';
import 'package:my_web/constants/colors.dart';
import 'package:my_web/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          //icon button to the close the navigation
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              onTap: () {
                onNavItemTap(i);
              },
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
              titleTextStyle: const TextStyle(
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
              leading: Icon(navIcons[i]),
              title: Text(navTitle[i]),
            ),
        ],
      ),
    );
  }
}
