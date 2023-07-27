import 'package:get/get.dart';

import '../controllers/halldetails_controller.dart';

class HalldetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HalldetailsController>(
      () => HalldetailsController(),
    );
  }
}
