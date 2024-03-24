import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_web/constants/colors.dart';
import 'package:my_web/constants/screen_size.dart';
import 'package:my_web/constants/sns_links.dart';
import 'package:my_web/widgets/custom_text_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      height: 550,
      width: double.infinity,
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          const Text(
            "Get In Touch",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          //Textform field
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 650, maxHeight: 100),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return constraints.maxWidth >= kMinDasktopWidth
                      ? buildNameEmailFieldDesktop()
                      : buildNameEmailFieldMobile();
                },
              )),
          const SizedBox(height: 18),
          // textform field for message
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 650),
              child: const CustomTextField(
                // controller:cont ,
                maxLine: 15,
                hintText: "Enter your message",
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //send button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 650),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Send Your Info")),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider()),
          //SMS icon button links
          const SizedBox(
            height: 15,
          ),
          //social media icons
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              //linked section
              InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinsk.linkedIn]);
                  },
                  child: Image.asset(
                    "assets/icons/linkedIn_icon.png",
                    width: 32,
                  )),
              //github link
              InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinsk.gitHub]);
                  },
                  child: Image.asset(
                    "assets/icons/github_icon.png",
                    width: 32,
                    color: Colors.white,
                  )),
              //facebook link
              InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinsk.facebook]);
                  },
                  child:
                      Image.asset("assets/icons/facebook_icon.png", width: 32)),
              //instagrasm links
              InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinsk.instagram]);
                  },
                  child: Image.asset("assets/icons/insta_icon.png", width: 32)),
              //youtube links
              InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinsk.youtube]);
                  },
                  child:
                      Image.asset("assets/icons/youtube_icon.png", width: 32)),
            ],
          ),
        ],
      ),
    );
  }

  //for desktop size
  Row buildNameEmailFieldDesktop() {
    return const Row(
      children: [
        //textform field for name
        Flexible(
          child: CustomTextField(
            // controller:cont ,
            hintText: "Enter your name",
          ),
        ),
        SizedBox(width: 16),
        //textform field for email
        Flexible(
          child: CustomTextField(
            // controller:cont ,
            hintText: "Enter your email",
          ),
        ),
        // //textform field for contact
        // Flexible(
        //   child: CustomTextField(
        //     // controller:cont ,
        //     hintText: "Enter your contact",
        //   ),
        // ),
      ],
    );
  }

  //for mobile size
  Column buildNameEmailFieldMobile() {
    return const Column(
      children: [
        //textform field for name
        Flexible(
          child: CustomTextField(
            // controller:cont ,
            hintText: "Enter your name",
          ),
        ),
        SizedBox(height: 16),
        //textform field for email
        Flexible(
          child: CustomTextField(
            // controller:cont ,
            hintText: "Enter your email",
          ),
        ),
        // //textform field for contact
        // Flexible(
        //   child: CustomTextField(
        //     // controller:cont ,
        //     hintText: "Enter your contact",
        //   ),
        // ),
      ],
    );
  }
}
