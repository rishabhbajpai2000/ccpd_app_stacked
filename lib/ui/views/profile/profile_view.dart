import 'package:ccpd_app_stacked/models/job_on_dashboard.dart';
import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:ccpd_app_stacked/ui/views/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

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
        title: Row(
          children: [
            const Text("Profile View",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded(child: Container()),
            GestureDetector(
                onTap: () => viewModel.logOut(),
                child: const Text("Log Out",
                    style: TextStyle(fontWeight: FontWeight.bold)))
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileRow(
                heading: "First Name",
                value: viewModel.profileData?.firstName ?? "Loading",
              ),
              ProfileRow(
                heading: "Last Name",
                value: viewModel.profileData?.lastName ?? "Loading",
              ),
              ProfileRow(
                heading: "Email",
                value: viewModel.profileData?.email ?? "Loading",
              ),
              Text("Jobs Posted",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              verticalSpaceSmall,

              if (viewModel.profileData == null)
                const Center(
                    child: SizedBox(
                  width: 50,
                  height: 50,
                  child: LoadingIndicator(
                    indicatorType: Indicator.lineScale,
                  ),
                ))
              else if (viewModel.profileData!.companyName.isEmpty)
                const Center(child: Text("No jobs found"))
              else
                SizedBox(
                  height:
                      50 * viewModel.profileData!.companyName.length.toDouble(),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: viewModel.jobs!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title:
                              Text(viewModel.profileData!.companyName[index]),
                        );
                      }),
                ),
              // GestureDetector(
              //     onTap: () {
              //       viewModel.sendNotification();
              //     },
              //     child: const Text(
              //       "Send Notification",
              //       style: TextStyle(fontSize: 40),
              //     )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();

  @override
  void onViewModelReady(ProfileViewModel viewModel) {
    viewModel.init();
  }
}

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    super.key,
    required this.heading,
    required this.value,
  });
  final String heading;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        verticalSpaceSmall,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey.shade200, width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ),
        verticalSpaceSmall
      ],
    );
  }
}
