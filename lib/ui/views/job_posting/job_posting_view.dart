import 'package:ccpd_app_stacked/links/asset_links.dart';
import 'package:ccpd_app_stacked/ui/common/widgets/FormField.dart';
import 'package:ccpd_app_stacked/ui/views/job_posting/job_posting_view.form.dart';
import 'package:flutter/material.dart';
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
    FormTextField(
        name: "MinimumPercentage",
        validator: JobPostingValidators.percentageValidator),
    FormTextField(
        name: "CompanyWebsite",
        validator: JobPostingValidators.companyWebsiteValidator),
    FormTextField(
        name: "JobLocation",
        validator: JobPostingValidators.jobLocationValidator),
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
                  Heading: "Job Description",
                  controller: jobDescriptionController,
                  numericalKeyboard: false,
                  formValidator: JobPostingValidators.jobDescriptionValidator),
              formField(
                  Heading: "Job Profile",
                  controller: jobProfileController,
                  numericalKeyboard: false,
                  formValidator: JobPostingValidators.jobTitleValidator),
              formField(
                  Heading: "Expected CTC",
                  controller: expectedCTCController,
                  numericalKeyboard: false,
                  formValidator: JobPostingValidators.expectedCTCValidator),
              formField(
                  Heading: "Registration Link",
                  controller: registrationLinkController,
                  numericalKeyboard: false,
                  formValidator:
                      JobPostingValidators.registrationLinkValidator),
              formField(
                  Heading: "Company Website ",
                  controller: companyWebsiteController,
                  numericalKeyboard: false,
                  formValidator: JobPostingValidators.companyWebsiteValidator),
              formField(
                  Heading: "Job Location",
                  controller: jobLocationController,
                  numericalKeyboard: false,
                  formValidator: JobPostingValidators.jobLocationValidator),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Select Branches",
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.cseValue,
                              onChanged: (value) {
                                viewModel.cseValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "CSE");
                              }),
                          const Text("CSE")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.cseAIMLValue,
                              onChanged: (value) {
                                viewModel.cseAIMLValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "CSE - AIML");
                              }),
                          const Text("CSE - AIML")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.cseDSValue,
                              onChanged: (value) {
                                viewModel.cseDSValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "CSE-DS");
                              }),
                          const Text("CSE-DS")
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.itValue,
                              onChanged: (value) {
                                viewModel.itValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "IT");
                              }),
                          const Text("IT")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.csValue,
                              onChanged: (value) {
                                viewModel.csValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "CS");
                              }),
                          const Text("CS")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.eceValue,
                              onChanged: (value) {
                                viewModel.eceValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "ECE");
                              }),
                          const Text("ECE")
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.enValue,
                              onChanged: (value) {
                                viewModel.enValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "EN");
                              }),
                          const Text("EN")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.meValue,
                              onChanged: (value) {
                                viewModel.meValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "ME");
                              }),
                          const Text("ME")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: viewModel.ceValue,
                              onChanged: (value) {
                                viewModel.ceValue = value!;
                                viewModel.rebuildUi();
                                viewModel.addBranch(value, "CE");
                              }),
                          const Text("CE")
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              formField(
                  Heading: "Minimum Percentage",
                  controller: minimumPercentageController,
                  numericalKeyboard: true,
                  formValidator: JobPostingValidators.percentageValidator),
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
              const Text(
                "Select Job Description",
              ),
              const SizedBox(
                height: 10,
              ),
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
                            ? const CircularProgressIndicator()
                            : const Text(
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
    super.onViewModelReady(viewModel);
    syncFormWithViewModel(viewModel);
  }
}

class BranchCheckBox extends StatelessWidget {
  bool value;
  String branchName;
  void Function(bool?, String branch)? addBranch;
  BranchCheckBox({
    super.key,
    required this.value,
    required this.branchName,
    required this.addBranch,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: value,
            onChanged: (value) {
              this.value = value!;
              addBranch!(value, branchName);
            }),
        Text(branchName),
      ],
    );
  }
}
