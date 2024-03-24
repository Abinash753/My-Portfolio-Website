import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_web/constants/screen_size.dart';
import 'package:my_web/constants/sns_links.dart';
import 'package:my_web/pages/main_mobile.dart';
import 'package:my_web/widgets/contact_section.dart';
import 'package:my_web/widgets/drawer_mobile.dart';
import 'package:my_web/widgets/footer_section.dart';
import 'package:my_web/widgets/header_desktop.dart';
import 'package:my_web/widgets/header_mobile.dart';
import 'package:my_web/widgets/main_desktop.dart';
import 'package:my_web/widgets/projects_section.dart';
import 'package:my_web/widgets/skills_desktop.dart';
import 'package:my_web/widgets/skills_mobile.dart';

import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //key for drawer
  final scaffoldKey = GlobalKey<ScaffoldState>();
  //
  final scrollController = ScrollController();
  //
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

//generating 4 global keys for page navigation
    final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          //
          endDrawer: constraints.maxWidth > kMinDasktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    //call function
                    scrollToSection(navIndex);
                    //for closing the drader
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //navigate to the home page
                SizedBox(key: navBarKeys.first),
                //MAIN
                //checking the condition  to show either HeaderDesktop
                //or HeaderMobile widget based on screen size HEADER SECTION
                constraints.maxWidth >= kMinDasktopWidth
                    ? HeaderDesktop(
                        onNavMenuTap: (int navIndex) {
                          //call the function to jump to specific widget
                          scrollToSection(navIndex);
                        },
                      )
                    : HeaderMobile(
                        onMenuTap: () {
                          //calling the drawer function
                          scaffoldKey.currentState?.openEndDrawer();
                          print("menu tapped");
                        },
                        onLogoTap: () {
                          print("logo tapped");
                        },
                      ),
                //main body
                // Checking the  device type and showing appropriate content in main body
                constraints.maxWidth >= kMinDasktopWidth
                    ? const MainDesktop()
                    : const MainMobile(),
                const SizedBox(
                  height: 30,
                ),

                // platform and skills section
                Container(
                  key: navBarKeys[1],
                  height: 650,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  width: screenWidth,
                  color: CustomColor.bgLight1,
                  child: Column(
                    children: [
                      //title
                      const Text(
                        "What I Can Do",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //       //skills section for  desktop section or mobile section starts here
                      //platform and skills
                      constraints.maxWidth >= kMedDasktopWidth
                          ? const SkillsDesktop()
                          : const SkillsMobile()
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                ProjectSection(
                  key: navBarKeys[2],
                ),
                const SizedBox(height: 30),
                // contact section

                ContactSection(
                  key: navBarKeys[3],
                ),
                //footer section
                const FooterSection(),
              ],
            ),
          ),
        );
      },
    );
  }

  //function to screool
  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //open a blog page
      js.context.callMethod("open", [SnsLinsk.blog]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(
          microseconds: 500,
        ),
        curve: Curves.easeInOut);
  }
}
