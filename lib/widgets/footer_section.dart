import 'package:flutter/material.dart';
import 'package:my_web/constants/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Developed and Managed By ABHINASH UPRETI",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: CustomColor.whitePrimary),
      ),
    );
  }
}



       // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 20),
              //   width: double.maxFinite,
              //   color: CustomColor.bgLight2,
              //   alignment: Alignment.center,
              //   child: RichText(
              //       text: TextSpan(
              //           style: DefaultTextStyle.of(context).style,
              //           children: const <TextSpan>[
              //         TextSpan(
              //             text: "Developed and Managed By ",
              //             style: TextStyle(color: Colors.black, fontSize: 17)),
              //         TextSpan(
              //           text: "ABHINASH UPRETI",
              //           style: TextStyle(
              //               color: Colors.orange,
              //               fontSize: 25,
              //               fontWeight: FontWeight.bold),
              //         )
              //       ])),
              // ),