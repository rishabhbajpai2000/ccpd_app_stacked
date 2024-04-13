import 'package:ccpd_app_stacked/links/AssetLinks.dart';
import 'package:ccpd_app_stacked/ui/common/widgets/FormField.dart';
import 'package:ccpd_app_stacked/ui/views/job_posting/job_posting_view.form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'job_posting_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(
        name: 'CompanyName',
        validator: JobPostingValidators.companyNameValidator),
    FormTextField(
        name: 'JobProfile', validator: JobPostingValidators.jobTitleValidator),
    FormTextField(
        name: 'JobDescription',
        validator: JobPostingValidators.jobDescriptionValidator),
    FormTextField(
        name: 'ExpectedCTC',
        validator: JobPostingValidators.expectedCTCValidator),
    FormTextField(
        name: 'RegistrationEndDate',
        validator: JobPostingValidators.registrationEndDateValidator),
    FormTextField(
        name: 'RegistrationLink',
        validator: JobPostingValidators.registrationLinkValidator),
  ],
)
class JobPostingView extends StackedView<JobPostingViewModel>
    with $JobPostingView {
  const JobPostingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    JobPostingViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        child: Form(
          key: viewModel.formKey,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Post a Job",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.network(ABESLogoURL)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              formField(
                  Heading: "Company Name",
                  controller: companyNameController,
                  numericalKeyboard: false,
                  formValidator: JobPostingValidators.companyNameValidator),
              formField(
                  Heading: "Job Profile",
                  controller: jobProfileController,
                  numericalKeyboard: false,
                  formValidator: JobPostingValidators.jobTitleValidator),
              formField(
                  Heading: "Job Description",
                  controller: jobDescriptionController,
                  numericalKeyboard: false,
                  formValidator: JobPostingValidators.jobDescriptionValidator),
              formField(
                  Heading: "Expected CTC",
                  controller: expectedCTCController,
                  numericalKeyboard: true,
                  formValidator: JobPostingValidators.expectedCTCValidator),
              GestureDetector(
                onTap: () {
                  viewModel.selectFile();
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffF2F3F7),
                  child: Center(
                      child: Text(
                    viewModel.documentSelected == false
                        ? "Upload Document"
                        : viewModel.pickedFile!.name,
                    style: const TextStyle(fontSize: 18),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Registration End Date",
              ),
              TextField(
                controller: registrationEndDateController,
                decoration: const InputDecoration(),
                onTap: () async {
                  viewModel.pickDate(context);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              formField(
                  Heading: "Registration Link",
                  controller: registrationLinkController,
                  numericalKeyboard: false,
                  formValidator:
                      JobPostingValidators.registrationLinkValidator),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      viewModel.discardJobPosting();
                    },
                    child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Discard',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      viewModel.saveJobPosting();
                    },
                    child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff8E97FD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: viewModel.loading == true
                            ? CircularProgressIndicator()
                            : Text(
                                'Save',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      )),
    );
  }

  @override
  JobPostingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      JobPostingViewModel();

  @override
  void onViewModelReady(JobPostingViewModel viewModel) {
    // TODO: implement onViewModelReady
    super.onViewModelReady(viewModel);
    syncFormWithViewModel(viewModel);
  }
}
