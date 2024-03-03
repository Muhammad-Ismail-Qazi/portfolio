import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/constant/spaces.dart';

import '../constant/fonts.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomCard({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed('/projects', arguments: text),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: Spaces.iconsSize * 4,
              // color: Colors.black45,
            ),
            const SizedBox(height: 8),
            // Adjust the spacing between icon and text
            Text(
              text,
              style: CustomFontStyle.normal,
            ),
          ],
        ),
      ),
    );
  }
}