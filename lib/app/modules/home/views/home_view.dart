import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/constant/spaces.dart';
import 'package:portfolio/app/widgets/appBar/appBar.dart';
import 'package:url_launcher/link.dart';

import '../../../constant/fonts.dart';
import '../../../widgets/drawer.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home',
      ),
      drawer: const CustomDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            child: SizedBox(
              child: Image(
                image: AssetImage('assets/profile.png'),
              ),
            ),
          ),
          Spaces.y3,
          Text("Hello I'm", style: CustomFontStyle.normal),
          Spaces.y2,
          Text("Muhammad Ismail", style: CustomFontStyle.heading),
          Spaces.y2,
          Text(
            "Software Engineer",
            style: CustomFontStyle.normal,
          ),
          Spaces.y5,
          AvatarGlow(
            glowShape: BoxShape.rectangle,
            glowColor: Colors.black45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
              onPressed: () => Get.toNamed('/contact'),
              child: Text(
                'Hire me',
                style: CustomFontStyle.button,
              ),
            ),
          ),
          Spaces.y3,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildLink(
                'https://www.instagram.com/m_ismail_qazi/',
                FontAwesomeIcons.instagram,
              ),
              buildLink(
                'https://web.facebook.com/profile.php?id=100056792259620',
                FontAwesomeIcons.facebook,
              ),
              buildLink(
                'https://www.linkedin.com/in/muhammad-ismail-559bb0246/',
                FontAwesomeIcons.linkedin,
              ),
              buildLink(
                'https://github.com/Muhammad-Ismail-Qazi',
                FontAwesomeIcons.github,
              ),
              buildLink(
                'https://www.youtube.com/channel/UC7AZOObk_-GlLRcf4G7-rLA',
                FontAwesomeIcons.youtube,
              ),
            ],
          ),
          Spaces.y3,
        ],
      ),
    );
  }

  Link buildLink(String url, IconData icon) {
    return Link(
      uri: Uri.parse(url),
      builder: (context, followLink) => IconButton(
        icon: FaIcon(icon),
        onPressed: followLink,
      ),
    );
  }
}