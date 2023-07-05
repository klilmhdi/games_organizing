import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:games_organizing/core/resources/manager_color.dart';
import 'package:get/get.dart';

import '../../../../routes/routes.dart';
import '../../../core/enum/request_state.dart';
import '../../../core/util/end_points.dart';
import '../model/profile_model.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  LoginController() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  RequestState loginState = RequestState.done;

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  var formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  bool rememberMeCheckBoxValue = false;

  Icon showIconVisible() {
    return Icon(
      passwordVisible ? Icons.visibility : Icons.visibility_off,
      color: ManagerColors.grey,
    );
  }

  void changeIconVisibility() {
    passwordVisible = !passwordVisible;
    update();
  }

  void changeRememberMeCheckBoxValue() {
    rememberMeCheckBoxValue = !rememberMeCheckBoxValue;
    update();
  }

  goToRegisterScreen() {
    Get.offAllNamed(Routes.registerView);
  }

  goToForgetPasswordScreen() {
    Get.offAllNamed(Routes.forgotPasswordView);
  }

  goToEmailCodeVerifyScreen() {
    Get.offAllNamed(Routes.verificatinView);
  }

  Future<UserModel> login() async {
    loginState = RequestState.loading;
    update();
    try {
      final url = Uri.parse(Api.LOGIN);
      final response = await http.post(
        url,
        body: {
          'email': emailTextController.text,
          'password': passwordTextController.text,
        },
      );
      final json = jsonDecode(response.body);
      if (response.statusCode == 201 || response.statusCode == 422) {
        loginState = RequestState.done;
        update();
        return UserModel.fromJson(json);
      } else {
        loginState = RequestState.error;
        update();
        throw Exception('Failed to login');
      }
    } catch (e) {
      loginState = RequestState.error;
      update();
      throw Exception('Failed to login: $e');
    }
  }
}
