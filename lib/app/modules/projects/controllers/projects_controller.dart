import 'package:get/get.dart';

class ProjectsController extends GetxController {
  //TODO: Implement ProjectsController

  @override
  void onClose() {}

  List<Map<String, String>> flutterProjects = [
    {
      'title': 'Covid-19',
      'description': 'Tracker of corona virus 2019.',
    },
    {
      'title': 'FashionZone',
      'description': 'Salon Management+AR+Social.',
    },
    {
      'title': 'MedLink',
      'description': 'Hospitals managements system',
    },
  ].obs;
}