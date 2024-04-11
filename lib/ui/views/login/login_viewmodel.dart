import 'package:ccpd_app_stacked/app/app.router.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:ccpd_app_stacked/ui/views/login/login_view.form.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final formKey = GlobalKey<FormState>();
  final _navigationService = NavigationService();
  final _loginService = LoginService();
  void navigateBack() {
    _navigationService.back();
  }

  void saveData() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      _loginService.signInWithEmail(email: emailValue, password: passwordValue);
    }
  }

  void navigateToSignUp() {
    _navigationService.navigateToSignUpView();
  }

  void forgotPassword() {
    Fluttertoast.showToast(msg: "Coming soon!");
  }
}

class LoginValidators {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    return null;
  }
}
