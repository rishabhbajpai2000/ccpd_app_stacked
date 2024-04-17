// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:ccpd_app_stacked/ui/views/job_posting/job_posting_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String CompanyNameValueKey = 'CompanyName';
const String JobProfileValueKey = 'JobProfile';
const String JobDescriptionValueKey = 'JobDescription';
const String ExpectedCTCValueKey = 'ExpectedCTC';
const String RegistrationEndDateValueKey = 'RegistrationEndDate';
const String RegistrationLinkValueKey = 'RegistrationLink';
const String MinimumPercentageValueKey = 'MinimumPercentage';
const String CompanyWebsiteValueKey = 'CompanyWebsite';
const String JobLocationValueKey = 'JobLocation';

final Map<String, TextEditingController> _JobPostingViewTextEditingControllers =
    {};

final Map<String, FocusNode> _JobPostingViewFocusNodes = {};

final Map<String, String? Function(String?)?> _JobPostingViewTextValidations = {
  CompanyNameValueKey: JobPostingValidators.companyNameValidator,
  JobProfileValueKey: JobPostingValidators.jobTitleValidator,
  JobDescriptionValueKey: JobPostingValidators.jobDescriptionValidator,
  ExpectedCTCValueKey: JobPostingValidators.expectedCTCValidator,
  RegistrationEndDateValueKey:
      JobPostingValidators.registrationEndDateValidator,
  RegistrationLinkValueKey: JobPostingValidators.registrationLinkValidator,
  MinimumPercentageValueKey: JobPostingValidators.percentageValidator,
  CompanyWebsiteValueKey: JobPostingValidators.companyWebsiteValidator,
  JobLocationValueKey: JobPostingValidators.jobLocationValidator,
};

mixin $JobPostingView {
  TextEditingController get companyNameController =>
      _getFormTextEditingController(CompanyNameValueKey);
  TextEditingController get jobProfileController =>
      _getFormTextEditingController(JobProfileValueKey);
  TextEditingController get jobDescriptionController =>
      _getFormTextEditingController(JobDescriptionValueKey);
  TextEditingController get expectedCTCController =>
      _getFormTextEditingController(ExpectedCTCValueKey);
  TextEditingController get registrationEndDateController =>
      _getFormTextEditingController(RegistrationEndDateValueKey);
  TextEditingController get registrationLinkController =>
      _getFormTextEditingController(RegistrationLinkValueKey);
  TextEditingController get minimumPercentageController =>
      _getFormTextEditingController(MinimumPercentageValueKey);
  TextEditingController get companyWebsiteController =>
      _getFormTextEditingController(CompanyWebsiteValueKey);
  TextEditingController get jobLocationController =>
      _getFormTextEditingController(JobLocationValueKey);

  FocusNode get companyNameFocusNode => _getFormFocusNode(CompanyNameValueKey);
  FocusNode get jobProfileFocusNode => _getFormFocusNode(JobProfileValueKey);
  FocusNode get jobDescriptionFocusNode =>
      _getFormFocusNode(JobDescriptionValueKey);
  FocusNode get expectedCTCFocusNode => _getFormFocusNode(ExpectedCTCValueKey);
  FocusNode get registrationEndDateFocusNode =>
      _getFormFocusNode(RegistrationEndDateValueKey);
  FocusNode get registrationLinkFocusNode =>
      _getFormFocusNode(RegistrationLinkValueKey);
  FocusNode get minimumPercentageFocusNode =>
      _getFormFocusNode(MinimumPercentageValueKey);
  FocusNode get companyWebsiteFocusNode =>
      _getFormFocusNode(CompanyWebsiteValueKey);
  FocusNode get jobLocationFocusNode => _getFormFocusNode(JobLocationValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_JobPostingViewTextEditingControllers.containsKey(key)) {
      return _JobPostingViewTextEditingControllers[key]!;
    }

    _JobPostingViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _JobPostingViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_JobPostingViewFocusNodes.containsKey(key)) {
      return _JobPostingViewFocusNodes[key]!;
    }
    _JobPostingViewFocusNodes[key] = FocusNode();
    return _JobPostingViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    companyNameController.addListener(() => _updateFormData(model));
    jobProfileController.addListener(() => _updateFormData(model));
    jobDescriptionController.addListener(() => _updateFormData(model));
    expectedCTCController.addListener(() => _updateFormData(model));
    registrationEndDateController.addListener(() => _updateFormData(model));
    registrationLinkController.addListener(() => _updateFormData(model));
    minimumPercentageController.addListener(() => _updateFormData(model));
    companyWebsiteController.addListener(() => _updateFormData(model));
    jobLocationController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    companyNameController.addListener(() => _updateFormData(model));
    jobProfileController.addListener(() => _updateFormData(model));
    jobDescriptionController.addListener(() => _updateFormData(model));
    expectedCTCController.addListener(() => _updateFormData(model));
    registrationEndDateController.addListener(() => _updateFormData(model));
    registrationLinkController.addListener(() => _updateFormData(model));
    minimumPercentageController.addListener(() => _updateFormData(model));
    companyWebsiteController.addListener(() => _updateFormData(model));
    jobLocationController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          CompanyNameValueKey: companyNameController.text,
          JobProfileValueKey: jobProfileController.text,
          JobDescriptionValueKey: jobDescriptionController.text,
          ExpectedCTCValueKey: expectedCTCController.text,
          RegistrationEndDateValueKey: registrationEndDateController.text,
          RegistrationLinkValueKey: registrationLinkController.text,
          MinimumPercentageValueKey: minimumPercentageController.text,
          CompanyWebsiteValueKey: companyWebsiteController.text,
          JobLocationValueKey: jobLocationController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _JobPostingViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _JobPostingViewFocusNodes.values) {
      focusNode.dispose();
    }

    _JobPostingViewTextEditingControllers.clear();
    _JobPostingViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get companyNameValue =>
      this.formValueMap[CompanyNameValueKey] as String?;
  String? get jobProfileValue =>
      this.formValueMap[JobProfileValueKey] as String?;
  String? get jobDescriptionValue =>
      this.formValueMap[JobDescriptionValueKey] as String?;
  String? get expectedCTCValue =>
      this.formValueMap[ExpectedCTCValueKey] as String?;
  String? get registrationEndDateValue =>
      this.formValueMap[RegistrationEndDateValueKey] as String?;
  String? get registrationLinkValue =>
      this.formValueMap[RegistrationLinkValueKey] as String?;
  String? get minimumPercentageValue =>
      this.formValueMap[MinimumPercentageValueKey] as String?;
  String? get companyWebsiteValue =>
      this.formValueMap[CompanyWebsiteValueKey] as String?;
  String? get jobLocationValue =>
      this.formValueMap[JobLocationValueKey] as String?;

  set companyNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CompanyNameValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(
        CompanyNameValueKey)) {
      _JobPostingViewTextEditingControllers[CompanyNameValueKey]?.text =
          value ?? '';
    }
  }

  set jobProfileValue(String? value) {
    this.setData(
      this.formValueMap..addAll({JobProfileValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(JobProfileValueKey)) {
      _JobPostingViewTextEditingControllers[JobProfileValueKey]?.text =
          value ?? '';
    }
  }

  set jobDescriptionValue(String? value) {
    this.setData(
      this.formValueMap..addAll({JobDescriptionValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(
        JobDescriptionValueKey)) {
      _JobPostingViewTextEditingControllers[JobDescriptionValueKey]?.text =
          value ?? '';
    }
  }

  set expectedCTCValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ExpectedCTCValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(
        ExpectedCTCValueKey)) {
      _JobPostingViewTextEditingControllers[ExpectedCTCValueKey]?.text =
          value ?? '';
    }
  }

  set registrationEndDateValue(String? value) {
    this.setData(
      this.formValueMap..addAll({RegistrationEndDateValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(
        RegistrationEndDateValueKey)) {
      _JobPostingViewTextEditingControllers[RegistrationEndDateValueKey]?.text =
          value ?? '';
    }
  }

  set registrationLinkValue(String? value) {
    this.setData(
      this.formValueMap..addAll({RegistrationLinkValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(
        RegistrationLinkValueKey)) {
      _JobPostingViewTextEditingControllers[RegistrationLinkValueKey]?.text =
          value ?? '';
    }
  }

  set minimumPercentageValue(String? value) {
    this.setData(
      this.formValueMap..addAll({MinimumPercentageValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(
        MinimumPercentageValueKey)) {
      _JobPostingViewTextEditingControllers[MinimumPercentageValueKey]?.text =
          value ?? '';
    }
  }

  set companyWebsiteValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CompanyWebsiteValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(
        CompanyWebsiteValueKey)) {
      _JobPostingViewTextEditingControllers[CompanyWebsiteValueKey]?.text =
          value ?? '';
    }
  }

  set jobLocationValue(String? value) {
    this.setData(
      this.formValueMap..addAll({JobLocationValueKey: value}),
    );

    if (_JobPostingViewTextEditingControllers.containsKey(
        JobLocationValueKey)) {
      _JobPostingViewTextEditingControllers[JobLocationValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasCompanyName =>
      this.formValueMap.containsKey(CompanyNameValueKey) &&
      (companyNameValue?.isNotEmpty ?? false);
  bool get hasJobProfile =>
      this.formValueMap.containsKey(JobProfileValueKey) &&
      (jobProfileValue?.isNotEmpty ?? false);
  bool get hasJobDescription =>
      this.formValueMap.containsKey(JobDescriptionValueKey) &&
      (jobDescriptionValue?.isNotEmpty ?? false);
  bool get hasExpectedCTC =>
      this.formValueMap.containsKey(ExpectedCTCValueKey) &&
      (expectedCTCValue?.isNotEmpty ?? false);
  bool get hasRegistrationEndDate =>
      this.formValueMap.containsKey(RegistrationEndDateValueKey) &&
      (registrationEndDateValue?.isNotEmpty ?? false);
  bool get hasRegistrationLink =>
      this.formValueMap.containsKey(RegistrationLinkValueKey) &&
      (registrationLinkValue?.isNotEmpty ?? false);
  bool get hasMinimumPercentage =>
      this.formValueMap.containsKey(MinimumPercentageValueKey) &&
      (minimumPercentageValue?.isNotEmpty ?? false);
  bool get hasCompanyWebsite =>
      this.formValueMap.containsKey(CompanyWebsiteValueKey) &&
      (companyWebsiteValue?.isNotEmpty ?? false);
  bool get hasJobLocation =>
      this.formValueMap.containsKey(JobLocationValueKey) &&
      (jobLocationValue?.isNotEmpty ?? false);

  bool get hasCompanyNameValidationMessage =>
      this.fieldsValidationMessages[CompanyNameValueKey]?.isNotEmpty ?? false;
  bool get hasJobProfileValidationMessage =>
      this.fieldsValidationMessages[JobProfileValueKey]?.isNotEmpty ?? false;
  bool get hasJobDescriptionValidationMessage =>
      this.fieldsValidationMessages[JobDescriptionValueKey]?.isNotEmpty ??
      false;
  bool get hasExpectedCTCValidationMessage =>
      this.fieldsValidationMessages[ExpectedCTCValueKey]?.isNotEmpty ?? false;
  bool get hasRegistrationEndDateValidationMessage =>
      this.fieldsValidationMessages[RegistrationEndDateValueKey]?.isNotEmpty ??
      false;
  bool get hasRegistrationLinkValidationMessage =>
      this.fieldsValidationMessages[RegistrationLinkValueKey]?.isNotEmpty ??
      false;
  bool get hasMinimumPercentageValidationMessage =>
      this.fieldsValidationMessages[MinimumPercentageValueKey]?.isNotEmpty ??
      false;
  bool get hasCompanyWebsiteValidationMessage =>
      this.fieldsValidationMessages[CompanyWebsiteValueKey]?.isNotEmpty ??
      false;
  bool get hasJobLocationValidationMessage =>
      this.fieldsValidationMessages[JobLocationValueKey]?.isNotEmpty ?? false;

  String? get companyNameValidationMessage =>
      this.fieldsValidationMessages[CompanyNameValueKey];
  String? get jobProfileValidationMessage =>
      this.fieldsValidationMessages[JobProfileValueKey];
  String? get jobDescriptionValidationMessage =>
      this.fieldsValidationMessages[JobDescriptionValueKey];
  String? get expectedCTCValidationMessage =>
      this.fieldsValidationMessages[ExpectedCTCValueKey];
  String? get registrationEndDateValidationMessage =>
      this.fieldsValidationMessages[RegistrationEndDateValueKey];
  String? get registrationLinkValidationMessage =>
      this.fieldsValidationMessages[RegistrationLinkValueKey];
  String? get minimumPercentageValidationMessage =>
      this.fieldsValidationMessages[MinimumPercentageValueKey];
  String? get companyWebsiteValidationMessage =>
      this.fieldsValidationMessages[CompanyWebsiteValueKey];
  String? get jobLocationValidationMessage =>
      this.fieldsValidationMessages[JobLocationValueKey];
}

extension Methods on FormStateHelper {
  setCompanyNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CompanyNameValueKey] = validationMessage;
  setJobProfileValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[JobProfileValueKey] = validationMessage;
  setJobDescriptionValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[JobDescriptionValueKey] = validationMessage;
  setExpectedCTCValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ExpectedCTCValueKey] = validationMessage;
  setRegistrationEndDateValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[RegistrationEndDateValueKey] =
          validationMessage;
  setRegistrationLinkValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[RegistrationLinkValueKey] =
          validationMessage;
  setMinimumPercentageValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[MinimumPercentageValueKey] =
          validationMessage;
  setCompanyWebsiteValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CompanyWebsiteValueKey] = validationMessage;
  setJobLocationValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[JobLocationValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    companyNameValue = '';
    jobProfileValue = '';
    jobDescriptionValue = '';
    expectedCTCValue = '';
    registrationEndDateValue = '';
    registrationLinkValue = '';
    minimumPercentageValue = '';
    companyWebsiteValue = '';
    jobLocationValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      CompanyNameValueKey: getValidationMessage(CompanyNameValueKey),
      JobProfileValueKey: getValidationMessage(JobProfileValueKey),
      JobDescriptionValueKey: getValidationMessage(JobDescriptionValueKey),
      ExpectedCTCValueKey: getValidationMessage(ExpectedCTCValueKey),
      RegistrationEndDateValueKey:
          getValidationMessage(RegistrationEndDateValueKey),
      RegistrationLinkValueKey: getValidationMessage(RegistrationLinkValueKey),
      MinimumPercentageValueKey:
          getValidationMessage(MinimumPercentageValueKey),
      CompanyWebsiteValueKey: getValidationMessage(CompanyWebsiteValueKey),
      JobLocationValueKey: getValidationMessage(JobLocationValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _JobPostingViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _JobPostingViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      CompanyNameValueKey: getValidationMessage(CompanyNameValueKey),
      JobProfileValueKey: getValidationMessage(JobProfileValueKey),
      JobDescriptionValueKey: getValidationMessage(JobDescriptionValueKey),
      ExpectedCTCValueKey: getValidationMessage(ExpectedCTCValueKey),
      RegistrationEndDateValueKey:
          getValidationMessage(RegistrationEndDateValueKey),
      RegistrationLinkValueKey: getValidationMessage(RegistrationLinkValueKey),
      MinimumPercentageValueKey:
          getValidationMessage(MinimumPercentageValueKey),
      CompanyWebsiteValueKey: getValidationMessage(CompanyWebsiteValueKey),
      JobLocationValueKey: getValidationMessage(JobLocationValueKey),
    });
