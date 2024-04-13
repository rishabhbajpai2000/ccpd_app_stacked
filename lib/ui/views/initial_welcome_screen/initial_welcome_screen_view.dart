import 'package:ccpd_app_stacked/links/AssetLinks.dart';
import 'package:ccpd_app_stacked/ui/common/widgets/CircularButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import 'initial_welcome_screen_viewmodel.dart';

class InitialWelcomeScreenView
    extends StackedView<InitialWelcomeScreenViewModel> {
  const InitialWelcomeScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InitialWelcomeScreenViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "C a m p u s E a s e",
                    style: TextStyle(
                      color: Color(0XFF8e97fd),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Image.network(ABESLogoURL)
                ],
              ),
              const SizedBox(height: 40),
              Image.network(InitialWelcomeScreenCenterImage),
              const SizedBox(height: 40),
              const Text("We are what we do",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text(
                  "Streamlining campus hiring with updates and notifications for a seamless placement journey.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 40),
              CircularButton(
                text: "SIGN UP",
                onPressed: () {
                  viewModel.navigateToSignUpScreen();
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ALREADY HAVE AN ACCOUNT? ",
                    style: TextStyle(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      viewModel.navigateToLoginScreen();
                    },
                    child: const Text(
                      "LOG IN",
                      style: TextStyle(fontSize: 14, color: Color(0xff8e97fd)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  InitialWelcomeScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InitialWelcomeScreenViewModel();
}
