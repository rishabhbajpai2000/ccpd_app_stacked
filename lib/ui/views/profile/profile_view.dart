import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile View"),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  viewModel.logOut();
                },
                child: Text(
                  "LogOut",
                  style: TextStyle(fontSize: 50),
                )),
            verticalSpaceMedium,
            GestureDetector(
                onTap: () {
                  viewModel.sendNotification();
                },
                child: Text(
                  "Send Notification",
                  style: TextStyle(fontSize: 40),
                )),
            verticalSpaceMedium,
            GestureDetector(
                onTap: () {
                  viewModel.parseCSV();
                },
                child: Text(
                  "Parse CSV",
                  style: TextStyle(fontSize: 40),
                )),
          ],
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
