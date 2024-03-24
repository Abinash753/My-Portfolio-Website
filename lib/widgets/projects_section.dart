import 'package:flutter/material.dart';
import 'package:my_web/constants/colors.dart';
import 'package:my_web/widgets/project_card.dart';

import '../utils/project_utils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
          const SizedBox(
            height: 40,
          ),
          //work project cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCardWidget(project: workProjectUtils[i]),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          //Hobby project title
          const Text(
            "Hpbby Projects",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 40,
          ),
          //hobby project cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(project: hobbyProjectUtils[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
