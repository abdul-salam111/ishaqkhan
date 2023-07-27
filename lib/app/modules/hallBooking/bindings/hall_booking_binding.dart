import 'package:get/get.dart';

import '../controllers/hall_booking_controller.dart';

class HallBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HallBookingController>(
      () => HallBookingController(),
    );
  }
}
