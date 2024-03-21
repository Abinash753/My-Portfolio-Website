import 'package:flutter/material.dart';
import 'package:my_web/constants/screen_size.dart';
import 'package:my_web/widgets/drawer_mobile.dart';
import 'package:my_web/widgets/project_card.dart';
import 'dart:js' as js;

import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //key for drawer
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          //
          endDrawer: constraints.maxWidth > kMinDasktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // //MAIN
              // //checking the condition  to show either HeaderDesktop
              // //or HeaderMobile widget based on screen size HEADER SECTION
              // constraints.maxWidth >= kMinDasktopWidth
              //     ? const HeaderDesktop()
              //     : HeaderMobile(
              //         onMenuTap: () {
              //           //calling the drawer function
              //           scaffoldKey.currentState?.openEndDrawer();
              //           print("menu tapped");
              //         },
              //         onLogoTap: () {
              //           print("logo tapped");
              //         },
              //       ),
              // //main body
              // //Checking the  device type and showing appropriate content in main body
              // constraints.maxWidth >= kMinDasktopWidth
              //     ? const MainDesktop()
              //     : const MainMobile(),
              // const SizedBox(
              //   height: 30,
              // ),
              // //second page
              // //platform and skills section
              // Container(
              //   height: 650,
              //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   width: screenWidth,
              //   color: CustomColor.bgLight1,
              //   child: Column(
              //     children: [
              //       //title
              //       const Text(
              //         "What I Can Do",
              //         style: TextStyle(
              //             fontSize: 24,
              //             fontWeight: FontWeight.bold,
              //             color: CustomColor.whitePrimary),
              //       ),
              //       const SizedBox(
              //         height: 30,
              //       ),
              //       //skills section for  desktop section or mobile section starts here

              //       constraints.maxWidth >= kMedDasktopWidth
              //           ? const SkillsDesktop()
              //           : const SkillsMobile()
              //     ],
              //   ),
              // ),

              //Project  section
              Container(
                //height: 500,
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    //work project title
                    const Text(
                      "Work Projects",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                    //work project cards
                    ProjectCardWidget(project:w.first ,),
                  ],
                ),
              ),
              //contact section
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.black,
              ),
              //footer section
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.white,
              ),
            ],
          ),
        );
      },
    );
  }
}
10 th video last 