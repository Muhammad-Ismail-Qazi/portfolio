import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/widgets/appBar/controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  AppController controller = Get.put(AppController());
  final String title;

  CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title.toString()),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () => Get.toNamed('/cv'),
            icon: const Icon(Icons.download)),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Obx(
            () => Switch(
              activeThumbImage: const NetworkImage(
                  'https://static-00.iconduck.com/assets.00/crescent-moon-emoji-256x256-rvr1f23w.png'),
              inactiveThumbImage: const NetworkImage(
                  'https://cdn.iconscout.com/icon/premium/png-256-thumb/sun-8608268-6809222.png'),
              activeColor: Colors.white54,
              inactiveTrackColor: Colors.grey,
              value: controller.toggleTheme.value,
              onChanged: (value) {
                controller.toggleThemeMode();
              },
            ),
          ),
        ),
      ],
    );
  }
}