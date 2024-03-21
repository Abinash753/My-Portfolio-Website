import 'package:flutter/material.dart';
import 'package:my_web/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 550),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //avatar image
          CircleAvatar(
            radius: 80,
            backgroundImage: const AssetImage("assets/my_profile.jpg"),
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.hintDark.withOpacity(0.6)
                ]).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Hi\n I'm Abinash Upreti \n Flutter Developer",
            style: TextStyle(
                height: 1.5,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 15,
          ),
          //button

          SizedBox(
            width: 180,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in Touch"),
            ),
          ),
        ],
      ),
    );
  }
}
