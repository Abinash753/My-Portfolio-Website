import 'package:flutter/material.dart';
import 'package:my_web/constants/colors.dart';
import 'package:my_web/utils/project_utils.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 250,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: CustomColor.bgLight2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //image of the card
          Image.asset(
            project.image,
            height: 140,
            width: 250,
            fit: BoxFit.cover,
          ),
          //title of the card
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
                fontSize: 20,
              ),
            ),
          ),
          //subtitle of the card
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
                fontSize: 15,
              ),
            ),
          ),
          const Spacer(),
          //footer of the cards
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  "Available on:",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 13,
                  ),
                ),
                const Spacer(),
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/android_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
                if (project.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/apple_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
                if (project.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/web_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
