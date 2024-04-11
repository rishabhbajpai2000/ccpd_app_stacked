import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:ccpd_app_stacked/ui/common/widgets/CircularButton.dart';
import 'package:ccpd_app_stacked/ui/common/widgets/InputTextField.dart';
import 'package:ccpd_app_stacked/ui/views/login/login_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: 'email', validator: LoginValidators.emailValidator),
    FormTextField(
        name: 'password', validator: LoginValidators.passwordValidator),
  ],
)
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
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
                    Image.asset("assets/images/ABESLogo.png"),
                  ],
                ),
                const SizedBox(height: 40),
                const Center(
                  child: Text("Welcome back!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 20),
                verticalSpaceLarge,
                InputTextField(
                  controller: emailController,
                  hint: 'Email',
                  formValidator: LoginValidators.emailValidator,
                ),
                const SizedBox(height: 20),
                InputTextField(
                  controller: passwordController,
                  hint: 'Password',
                  formValidator: LoginValidators.passwordValidator,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                CircularButton(
                    text: "LOGIN",
                    onPressed: () {
                      viewModel.saveData();
                    }),
                SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      viewModel.forgotPassword();
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    viewModel.navigateToSignUp();
                  },
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(
                            color: Color(0xff8e97fd),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
  @override
  void onViewModelReady(LoginViewModel viewModel) {
    // TODO: implement onViewModelReady
    syncFormWithViewModel(viewModel);
  }
}
