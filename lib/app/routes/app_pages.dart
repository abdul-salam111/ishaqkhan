import 'package:get/get.dart';

import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/hallBooking/bindings/hall_booking_binding.dart';
import '../modules/hallBooking/views/hall_booking_view.dart';
import '../modules/halldetails/bindings/halldetails_binding.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/halldetails_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.HALLDETAILS,
      page: () => const HalldetailsView(),
      binding: HalldetailsBinding(),
    ),
    GetPage(
      name: _Paths.HALL_BOOKING,
      page: () => HallBookingView(),
      binding: HallBookingBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => Authenticationview(),
      binding: AuthenticationBinding(),
    ),
  ];
}
