import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/contact/bindings/contact_binding.dart';
import '../modules/contact/views/contact_view.dart';
import '../modules/cv/bindings/cv_binding.dart';
import '../modules/cv/views/cv_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/projects/bindings/projects_binding.dart';
import '../modules/projects/views/projects_view.dart';
import '../modules/view details/bindings/view_details_binding.dart';
import '../modules/view details/views/view_details_view.dart';

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
    GetPage(
      name: _Paths.VIEW_DETAILS,
      page: () => const ViewDetailsView(),
      binding: ViewDetailsBinding(),
    ),
  ];
}
