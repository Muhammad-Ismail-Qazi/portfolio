import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/widgets/appBar/appBar.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/fonts.dart';
import '../../../constant/spaces.dart';
import '../../../widgets/card.dart';
import '../../../widgets/drawer.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      buildBottomSheet();
    });
  }

  Future<dynamic> buildBottomSheet() {
    return Get.bottomSheet(
        isDismissible: false,
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 8 * 3.h,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '12 ',
                        style: CustomFontStyle.heading,
                      ),
                      Text(
                        'projects',
                        style: CustomFontStyle.normal,
                      ),
                      Spaces.x2,
                      Text(
                        '12 ',
                        style: CustomFontStyle.heading,
                      ),
                      Text(
                        'clients',
                        style: CustomFontStyle.normal,
                      ),
                      Spaces.x2,
                      Text(
                        '92 ',
                        style: CustomFontStyle.heading,
                      ),
                      Text(
                        'messages',
                        style: CustomFontStyle.normal,
                      ),
                      Spaces.x2,
                    ],
                  ),
                  Text(
                    "Specialize in",
                    style: CustomFontStyle.heading,
                  ),
                  GridView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const AlwaysScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    children: const [
                      CustomCard(
                        icon: FontAwesomeIcons.android,
                        text: 'Flutter',
                      ),
                      CustomCard(
                        icon: FontAwesomeIcons.java,
                        text: 'Java',
                      ),
                      CustomCard(
                        icon: FontAwesomeIcons.laravel,
                        text: 'Laravel',
                      ),
                      CustomCard(
                        icon: FontAwesomeIcons.aws,
                        text: 'AWS',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'About',
      ),
      drawer: const CustomDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(image: AssetImage('assets/profile.png')),
          Text(
            'Muhammad Ismail',
            style: CustomFontStyle.heading,
          ),
          Text(
            'Software engineer',
            style: CustomFontStyle.normal,
          ),
        ],
      ),
    );
  }
}