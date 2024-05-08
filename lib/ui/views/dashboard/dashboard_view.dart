import 'package:ccpd_app_stacked/app/app.router.dart';
import 'package:ccpd_app_stacked/links/asset_links.dart';
import 'package:ccpd_app_stacked/models/job_on_dashboard.dart';
import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:stacked_services/stacked_services.dart';
import "package:url_launcher/url_launcher.dart";
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0),
          child: ListView(
            children: [
              verticalSpaceSmall,
              Row(
                children: [
                  const Text(
                    "C a m p u s E a s e",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff565fc6)),
                  ),
                  Expanded(child: Container()),
                  Image.network(ABESLogoURL)
                ],
              ),
              verticalSpaceSmall,
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Team, ",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "CCPD",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: const Icon(Icons.notifications_outlined),
                  )
                ],
              ),
              verticalSpaceSmall,
              // First row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardCell(
                    upperHeading: "Total Placed",
                    value: viewModel.totalPlaced,
                    lowerHeading: "Students",
                  ),
                  DashboardCell(
                    upperHeading: "Total Unplaced",
                    value: viewModel.totalUnplaced,
                    lowerHeading: "Students",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardCell(
                    upperHeading: "Upcoming Drives",
                    lowerHeading: "Drives",
                    value: viewModel.upcomingDrives,
                  ),
                  DashboardCell(
                    upperHeading: "Offers made",
                    value: viewModel.offersMade,
                    lowerHeading: "offers",
                  ),
                ],
              ),
              verticalSpaceSmall,
              SizedBox(
                height: 125,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DashboardBanner(
                      imageAddress: "MechanicalFAQ.pdf",
                      imageLink: dashboardBanner1,
                    ),
                    DashboardBanner(
                      imageAddress: "MechanicalFAQ.pdf",
                      imageLink: dashboardBanner2,
                    ),
                    DashboardBanner(
                      imageAddress: "CivilFAQ.pdf",
                      imageLink: dashboardBanner3,
                    ),
                    DashboardBanner(
                      imageAddress: "ElectricalFAQ.pdf",
                      imageLink: dashboardBanner4,
                    ),
                    DashboardBanner(
                      imageAddress: "ElectronicsFAQ.pdf",
                      imageLink: dashboardBanner5,
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              const Text(
                "Applications Posted",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              verticalSpaceSmall,
              const Row(
                children: [
                  TableCell(
                    value: "Company",
                    bold: true,
                  ),
                  TableCell(
                    value: "Drive Date",
                    bold: true,
                  ),
                  TableCell(
                    value: "Registered",
                    bold: true,
                    center: true,
                  ),
                  TableCell(
                    value: "Pending",
                    bold: true,
                    center: true,
                  ),
                ],
              ),
              const Divider(),
              verticalSpaceSmall,
              if (viewModel.jobs == null)
                const Center(child: CircularProgressIndicator())
              else if (viewModel.jobs!.isEmpty)
                const Center(child: Text("No jobs found"))
              else
                SizedBox(
                  height: 50 * viewModel.jobs!.length.toDouble(),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: viewModel.jobs!.length,
                      itemBuilder: (context, index) {
                        JobOnDashboard job = viewModel.jobs![index];
                        return JobRow(
                          job: job,
                        );
                      }),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashboardViewModel();
  @override
  void onViewModelReady(DashboardViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.init();
  }
}

class JobRow extends StatelessWidget {
  const JobRow({
    super.key,
    required this.job,
  });

  final JobOnDashboard job;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationService().navigateToJobDetailsView();
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xfff7f7f7),
            border: Border.all(color: const Color(0xfff7f7f7)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TableCell(
                  value: job.companyName,
                  bold: true,
                  size: 16,
                ),
                TableCell(
                  value: job.driveDate,
                ),
                TableCell(
                  value: job.registered.toString(),
                  center: true,
                ),
                TableCell(
                  value: job.pending.toString(),
                  center: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TableCell extends StatelessWidget {
  final String value;
  final bool bold;
  final double size;
  final bool center;

  const TableCell({
    super.key,
    required this.value,
    this.bold = false,
    this.size = 13,
    this.center = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Text(
        value,
        style: TextStyle(
            fontSize: size, fontWeight: bold ? FontWeight.bold : null),
        textAlign: center ? TextAlign.center : TextAlign.start,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class DashboardBanner extends StatelessWidget {
  final String imageLink;
  const DashboardBanner(
      {super.key, required this.imageLink, required this.imageAddress});
  final String imageAddress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () async {
              final String link =
                  "$baseImageAddress/Assets/QuestionDocs/$imageAddress";
              final Uri url = Uri.parse(link);
              if (!await launchUrl(url)) {
                Fluttertoast.showToast(msg: "Could not Load PDF");
              }
            },
            child: Image.network(imageLink)),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}

class DashboardCell extends StatelessWidget {
  final String upperHeading, lowerHeading;
  final String? value;

  const DashboardCell({
    super.key,
    required this.upperHeading,
    required this.lowerHeading,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                upperHeading,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              value == null
                  ? const SizedBox(
                      width: 30,
                      height: 30,
                      child:
                          LoadingIndicator(indicatorType: Indicator.lineScale))
                  : Text(
                      value!,
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.bold),
                    ),
              const SizedBox(
                height: 5,
              ),
              Text(
                lowerHeading,
                style: const TextStyle(fontSize: 8, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
