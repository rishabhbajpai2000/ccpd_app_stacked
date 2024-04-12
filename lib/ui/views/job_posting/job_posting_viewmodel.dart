import 'package:ccpd_app_stacked/ui/views/job_posting/job_posting_view.form.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:intl/intl.dart';

class JobPostingViewModel extends FormViewModel {
  bool documentSelected = false;
  PlatformFile? pickedFile;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result == null) return;
    documentSelected = true;
    pickedFile = result.files.first;
    rebuildUi();
  }

  void pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(2101));
    if (pickedDate != null) {
      registrationEndDateValue = DateFormat('dd/MM/yyyy').format(pickedDate);
    }
  }
}

class JobPostingValidators {
  static String? companyNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Company Name cannot be empty';
    }
    return null;
  }

  static String? jobTitleValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Job Title cannot be empty';
    }
    return null;
  }

  static String? jobDescriptionValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Job Description cannot be empty';
    }
    return null;
  }

  static String? expectedCTCValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Expected CTC cannot be empty';
    }
    return null;
  }

  static String? registrationEndDateValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Registration End Date cannot be empty';
    }
    return null;
  }

  static String? registrationLinkValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Registration Link cannot be empty';
    }
    return null;
  }
}
