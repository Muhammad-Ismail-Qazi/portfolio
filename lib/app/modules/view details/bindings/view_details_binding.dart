import 'package:get/get.dart';

import '../controllers/view_details_controller.dart';

class ViewDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewDetailsController>(
      () => ViewDetailsController(),
    );
  }
}
