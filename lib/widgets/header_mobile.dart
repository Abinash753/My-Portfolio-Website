import 'package:flutter/material.dart';
import 'package:my_web/styles/style.dart';
import 'package:my_web/widgets/side_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      padding: const EdgeInsets.only(left: 13, right: 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SideLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
          ),
          //
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
