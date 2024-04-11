import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/ui/views/sign_up/sign_up_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends FormViewModel {
  final formKey = GlobalKey<FormState>();
  final _logger = getLogger('SignUpViewModel');
  final _navigationService = NavigationService();

  void saveData() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      
    }
  }

  void navigateBack() {
    _navigationService.back();
  }
}

class SignUpValidators {
  static String? firstNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'First Name cannot be empty';
    }
    return null;
  }

  static String? lastNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Last Name cannot be empty';
    }
    return null;
  }

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
