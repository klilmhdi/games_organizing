import 'package:flutter/material.dart';
import 'package:games_organizing/features/auth/controller/login_controller.dart';
import 'package:games_organizing/features/booking_table_view/controller/booking_controller.dart';
import 'package:games_organizing/features/out_bording/presentation/controller/out_boarding_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import '../features/auth/controller/registration_controller.dart';
import '../features/email_code_verification/presentation/controller/verification_controller.dart';
import '../features/forgotPassword/presentaion/controller/forgot_password_controller.dart';
import '../features/main/presentation/controller/main_controller.dart';
import '../features/splash/presentation/controller/splash_controller.dart';

final instance = GetIt.instance;

initModul() async {
  WidgetsFlutterBinding.ensureInitialized();
}

initSplash() {
  Get.put<SplashController>(
    SplashController(),
  );
}

disposeSplash() {
  Get.delete<SplashController>();
}

initOutBoarding() {
  disposeSplash();
  Get.put<OutBoarddingController>(OutBoarddingController());
}

disposeOutBoarding() {
  Get.delete<OutBoarddingController>();
}

initLoginView() {
  disposeRegisterView();
  disposeOutBoarding();
  Get.put<LoginController>(LoginController());
}

disposeLoginView() {
  Get.delete<LoginController>();
}

initRegisterView() {
  disposeLoginView();
  Get.put<RegisterController>(RegisterController());
}

disposeRegisterView() {
  Get.delete<RegisterController>();
}

initForgotPasswordView() {
  disposeLoginView();
  Get.put<ForgotPasswordConteroller>(ForgotPasswordConteroller());
}

disposeForgotPasswordView() {
  Get.delete<ForgotPasswordConteroller>();
}

initVerificationView() {
  disposeForgotPasswordView();
  Get.put<VereificationController>(VereificationController());
}

disposeVerificationView() {
  Get.delete<VereificationController>();
}

disposeBookingTableView() {
  Get.delete<BookingTableController>();
}


initResetPassView() {
  disposeVerificationView();
  Get.put<VereificationController>(VereificationController());
}
initBookingTable() {
  // disposeBookingTableView();
  Get.put<BookingTableController>(BookingTableController());
}

disposeResetPassView() {
  Get.delete<VereificationController>();
}

initMainModule() {
  Get.put<MainController>(MainController());
}
