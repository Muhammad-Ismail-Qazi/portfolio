import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text('Muhammad Ismail'),
              accountEmail: Text('muhammad.ismail15604@gmail.com')),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Get.toNamed("home"),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('About'),
            onTap: () => Get.toNamed('/about'),
          ),
          ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () => Get.toNamed('/contact')),
        ],
      ),
    );
  }
}