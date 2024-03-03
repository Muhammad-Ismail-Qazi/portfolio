import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import 'package:portfolio/app/modules/about/bindings/about_binding.dart';
import 'package:portfolio/app/modules/about/views/about_view.dart';
import 'package:portfolio/app/modules/contact/bindings/contact_binding.dart';
import 'package:portfolio/app/modules/contact/views/contact_view.dart';
import 'package:portfolio/app/modules/cv/bindings/cv_binding.dart';
import 'package:portfolio/app/modules/cv/views/cv_view.dart';
import 'package:portfolio/app/modules/home/bindings/home_binding.dart';
import 'package:portfolio/app/modules/home/views/home_view.dart';
import 'package:portfolio/app/modules/projects/bindings/projects_binding.dart';
import 'package:portfolio/app/modules/projects/views/projects_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding(),
        transition: Transition.circularReveal),
    GetPage(
        name: _Paths.CONTACT,
        page: () => ContactView(
              key: UniqueKey(),
            ),
        binding: ContactBinding(),
        transitionDuration: const Duration(seconds: 1),
        transition: Transition.fade),
    GetPage(
        name: _Paths.ABOUT,
        page: () => const AboutView(),
        binding: AboutBinding(),
        transition: Transition.cupertino),
    GetPage(
        name: _Paths.CV,
        page: () => const CvView(),
        binding: CvBinding(),
        transition: Transition.leftToRightWithFade),
    GetPage(
      name: _Paths.PROJECTS,
      page: () => const ProjectsView(),
      binding: ProjectsBinding(),
    ),
  ];
}
