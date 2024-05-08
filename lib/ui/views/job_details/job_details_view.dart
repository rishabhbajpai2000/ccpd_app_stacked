import 'package:ccpd_app_stacked/models/Job.dart';
import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:ccpd_app_stacked/ui/views/dashboard/dashboard_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:stacked/stacked.dart';

import 'job_details_viewmodel.dart';

class JobDetailsView extends StackedView<JobDetailsViewModel> {
  const JobDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    JobDetailsViewModel viewModel,
    Widget? child,
  ) {
    Job job = viewModel.job;

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Color(0xffeef2ff),
              height: 200,
              width: screenWidth(context),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircularPercentIndicator(
                              radius: 55.0, // Adjust the size of the circle
                              lineWidth: 10.0, // Adjust the width of the circle
                              percent: viewModel.getCompletionRatio(
                                  job), // Adjust the percentage of the circle that should be covered by the progress color
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: Colors.white,
                              progressColor: Color(0xff2051E5),
                            ),
                            Text(viewModel.getCompletionPercentage(job),
                                style: TextStyle(
                                    fontSize: 30,
                                    color: const Color(0xff2051E5))),
                          ],
                        ),
                        verticalSpaceSmall,
                        Text("Job Completion rate ",
                            style: TextStyle(fontSize: 14, color: Colors.grey)),
                      ],
                    ),
                  ),
                  horizontalSpaceMedium,
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(job.companyName,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        verticalSpaceMedium,
                        Row(
                          children: [
                            Text("•", style: const TextStyle(fontSize: 30)),
                            horizontalSpaceSmall,
                            Text(job.jobProfile,
                                style: const TextStyle(fontSize: 16)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("•", style: const TextStyle(fontSize: 30)),
                            horizontalSpaceSmall,
                            Text(job.expCTC,
                                style: const TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Overview",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  // First row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      JobDetailsCell(
                        upperHeading: "Registered Students(600)",
                        value: "199",
                        lowerHeading: "Students",
                      ),
                      JobDetailsCell(
                        upperHeading: "Registered Students(600)",
                        value: "199",
                        lowerHeading: "Students",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      JobDetailsCell(
                        upperHeading: "Registered Students(600)",
                        value: "199",
                        lowerHeading: "Students",
                      ),
                      JobDetailsCell(
                        upperHeading: "Registered Students(600)",
                        value: "199",
                        lowerHeading: "Students",
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  JobDescriptionSection(
                    heading: "Job Description",
                    content: job.jobDescription,
                  ),
                  JobDescriptionSection(
                    heading: "Website",
                    content: job.websiteURL,
                    link: true,
                  ),
                  JobDescriptionSection(
                      heading: "Eligible Branches",
                      content: job.printBranches()),
                  JobDescriptionSection(
                      heading: "Expected CTC", content: job.expCTC),
                  JobDescriptionSection(
                      heading: "Registration End Date", content: job.endDate),
                  JobDescriptionSection(
                    heading: "RegistrationLink",
                    content: job.regLink,
                    link: true,
                  ),
                  verticalSpaceMedium,
                  Center(
                    child: JobDetailsPageButton(
                      title: "Back",
                      titleColor: Colors.white,
                      backgroundColor: const Color(0xff8e97fd),
                      onTap: () => Navigator.pop(context),
                    ),
                  ),
                  verticalSpaceMedium,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  JobDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      JobDetailsViewModel();
}

class JobDescriptionSection extends StatelessWidget {
  final String heading;
  final String content;
  final bool link;
  const JobDescriptionSection({
    super.key,
    required this.heading,
    required this.content,
    this.link = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (link) {
          final Uri url = Uri.parse(content);
          // if (!await launchUrl(url)) {
          //   throw Exception('Could not launch $url');
          // }
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpaceSmall,
          Text(heading,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          verticalSpaceSmall,
          Text(content,
              style: TextStyle(color: link ? Color(0xff8e97fd) : null)),
          verticalSpaceSmall
        ],
      ),
    );
  }
}

class JobDetailsPageButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color backgroundColor;
  final void Function()? onTap;
  const JobDetailsPageButton({
    super.key,
    required this.title,
    required this.titleColor,
    required this.backgroundColor,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth(context) * 0.4,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Center(
            child: Text(title, style: TextStyle(color: titleColor)),
          ),
        ),
      ),
    );
  }
}

class JobDetailsCell extends StatelessWidget {
  final String upperHeading, lowerHeading;
  final String? value;

  const JobDetailsCell({
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
        width: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffeef2ff),
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
