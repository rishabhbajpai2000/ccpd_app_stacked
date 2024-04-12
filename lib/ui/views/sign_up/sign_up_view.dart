import 'package:ccpd_app_stacked/AssetLinks.dart';
import 'package:ccpd_app_stacked/ui/common/widgets/CircularButton.dart';
import 'package:ccpd_app_stacked/ui/common/widgets/InputTextField.dart';
import 'package:ccpd_app_stacked/ui/views/sign_up/sign_up_view.form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'sign_up_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(
        name: 'firstName', validator: SignUpValidators.firstNameValidator),
    FormTextField(
        name: 'lastName', validator: SignUpValidators.lastNameValidator),
    FormTextField(name: 'email', validator: SignUpValidators.emailValidator),
    FormTextField(
        name: 'password', validator: SignUpValidators.passwordValidator),
  ],
)
class SignUpView extends StackedView<SignUpViewModel> with $SignUpView {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: viewModel.formKey,
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        viewModel.navigateBack();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                    Image.network(ABESLogoURL)
                  ],
                ),
                const SizedBox(height: 40),
                const Text("Create your account",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 20),
                InputTextField(
                  controller: firstNameController,
                  hint: "First Name",
                  formValidator: SignUpValidators.firstNameValidator,
                ),
                const SizedBox(height: 20),
                InputTextField(
                  controller: lastNameController,
                  hint: "Last Name",
                  formValidator: SignUpValidators.lastNameValidator,
                ),
                const SizedBox(height: 20),
                InputTextField(
                  controller: emailController,
                  hint: "Office Email Address",
                  formValidator: SignUpValidators.emailValidator,
                ),
                const SizedBox(height: 20),
                InputTextField(
                  controller: passwordController,
                  hint: "Password",
                  formValidator: SignUpValidators.passwordValidator,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                CircularButton(
                    text: "Get Started",
                    onPressed: () {
                      viewModel.saveData();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();
  @override
  void onViewModelReady(SignUpViewModel viewModel) {
    super.onViewModelReady(viewModel);
    syncFormWithViewModel(viewModel);
  }
}
