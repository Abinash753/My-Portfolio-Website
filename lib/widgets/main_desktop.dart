import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1 / 2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi\n I'm Abinash Upreti \n Flutter Developer",
                style: TextStyle(
                    height: 1.5,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              const SizedBox(
                height: 15,
              ),
              //button

              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in Touch"),
                ),
              ),
            ],
          ),

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
        ],
      ),
    );
  }
}
