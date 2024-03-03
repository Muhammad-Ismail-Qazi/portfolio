import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/constant/fonts.dart';
import 'package:portfolio/app/widgets/appBar/appBar.dart';
import 'package:portfolio/app/widgets/drawer.dart';
import 'package:url_launcher/link.dart';

import '../../../constant/spaces.dart';
import '../controllers/projects_controller.dart';

class ProjectsView extends GetView<ProjectsController> {
  const ProjectsView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Get.arguments.toString(),
      ),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        itemCount: controller.flutterProjects.length,
        itemBuilder: (BuildContext context, int index) {
          final project = controller.flutterProjects[index];
          return buildProjectsContainer(
              project['title']!, project['description']!);
        },
      ),
    );
  }

  Widget buildProjectsContainer(String title, String description) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Get.arguments, style: CustomFontStyle.normal),
                Spaces.y1,
                Text(
                  title,
                  style: CustomFontStyle.heading,
                ),
                Spaces.y1,
                Text(
                  description,
                  style: CustomFontStyle.normal,
                ),
                Spaces.y1,
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow),
                    const SizedBox(width: 4.0),
                    Text('5', style: CustomFontStyle.normal),
                    Spaces.x10,
                    Spaces.x10,
                    Spaces.x10,
                    Spaces.x10,
                    Spaces.x10,
                    Spaces.x10,
                    Spaces.x5,
                    Link(
                      uri: Uri.parse('https://github.com/Muhammad-Ismail-Qazi'),
                      builder: (context, followLink) => IconButton(
                        onPressed: followLink,
                        icon: const FaIcon(FontAwesomeIcons.github),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}