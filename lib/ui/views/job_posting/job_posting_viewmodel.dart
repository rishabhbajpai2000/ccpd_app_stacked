import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:ccpd_app_stacked/ui/views/job_posting/job_posting_view.form.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:intl/intl.dart';

class JobPostingViewModel extends FormViewModel {
  List<String> eligibleBranches = [];
  final formKey = GlobalKey<FormState>();
  bool documentSelected = false;
  PlatformFile? pickedFile;
  bool loading = false;
  final _logger = getLogger('JobPostingViewModel');

  // check boxes values
  bool cseValue = false;
  bool cseAIMLValue = false;
  bool cseDSValue = false;

  bool itValue = false;
  bool csValue = false;
  bool eceValue = false;

  bool enValue = false;
  bool meValue = false;
  bool ceValue = false;

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

  Future<void> saveJobPosting() async {
    loading = true;
    rebuildUi();
    _logger.i('Save Job Posting');
    if (formKey.currentState!.validate()) {
      // there is no validator for elegible branches, therefore this.
      if (eligibleBranches.isEmpty) {
        Fluttertoast.showToast(msg: "Select atleast one branch");
        loading = false;
        rebuildUi();
        return;
      }

      await APICallsService.postTheJob(
          companyName: companyNameValue!,
          jobProfile: jobProfileValue!,
          jobDescription: jobDescriptionValue!,
          expectedCTC: expectedCTCValue!,
          registrationLink: registrationLinkValue!,
          jDLink: 'www.google.com',
          registrationEndDate: registrationEndDateValue!,
          eligibleBranches: eligibleBranches,
          percentage: minimumPercentageValue!,
          websiteURL: companyWebsiteValue!,
          jobLocation: jobLocationValue!);
    }
    loading = false;
    rebuildUi();
  }

  void addBranch(bool? value, String branchName) {
    if (value == null) return;
    if (value && !eligibleBranches.contains(branchName)) {
      eligibleBranches.add(branchName);
    } else if (!value && eligibleBranches.contains(branchName)) {
      eligibleBranches.remove(branchName);
    }
    _logger.i(eligibleBranches);
  }

  void discardJobPosting() {
    companyNameValue = '';
    jobProfileValue = '';
    jobDescriptionValue = '';
    expectedCTCValue = '';
    registrationEndDateValue = '';
    registrationLinkValue = '';
    documentSelected = false;
    pickedFile = null;
    companyWebsiteValue = '';
    jobLocationValue = '';
    minimumPercentageValue = '';
    eligibleBranches.clear();
    rebuildUi();
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

  static String? eligibleBranchesValidator(List<String> value) {
    if (value.isEmpty) {
      return 'At least one branch should be selected';
    }
    return null;
  }

  static String? percentageValidator(String? value) {
    // if (value == null || value.isEmpty) {
    //   return 'Percentage cannot be empty';
    // }
    // if (int.parse(value) > 100) {
    //   return 'Percentage cannot be greater than 100';
    // }
    return null;
  }

  static String? companyWebsiteValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Company Website Link cannot be empty';
    }
    return null;
  }

  static String? jobLocationValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Job Location cannot be empty';
    }
    return null;
  }
}
