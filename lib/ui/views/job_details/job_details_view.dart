import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:ccpd_app_stacked/ui/views/students_list/students_list_view.dart';
import 'package:ccpd_app_stacked/ui/widgets/common/job_details_stat_card/job_details_stat_card.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:stacked/stacked.dart';
import 'job_details_viewmodel.dart';

class JobDetailsView extends StackedView<JobDetailsViewModel> {
  final List<int> ids;
  const JobDetailsView({Key? key, required this.ids}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    JobDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Job Details"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: viewModel.job == null
            ? const Center(
                child: SizedBox(
                    height: 50,
                    width: 50,
                    child: LoadingIndicator(
                      indicatorType: Indicator.lineScale,
                      colors: [Color(0xff2051E5)],
                    )))
            : ListView(
                children: [
                  Container(
                    color: const Color(0xffeef2ff),
                    height: 200,
                    width: screenWidth(context),
                    child: Row(
                      children: [
                        const SizedBox(
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
                                    radius: 55.0,
                                    lineWidth: 10.0,
                                    percent: viewModel
                                        .getCompletionRatio(viewModel.job!),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    backgroundColor: Colors.white,
                                    progressColor: const Color(0xff2051E5),
                                  ),
                                  Text(
                                      viewModel.getCompletionPercentage(
                                          viewModel.job!),
                                      style: const TextStyle(
                                          fontSize: 30,
                                          color: Color(0xff2051E5))),
                                ],
                              ),
                              verticalSpaceSmall,
                              const Text("Job Completion rate ",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
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
                              Text(viewModel.job!.companyName,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              verticalSpaceMedium,
                              Row(
                                children: [
                                  const Text("•",
                                      style: TextStyle(fontSize: 30)),
                                  horizontalSpaceSmall,
                                  Text(viewModel.job!.jobProfile,
                                      style: const TextStyle(fontSize: 16)),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("•",
                                      style: TextStyle(fontSize: 30)),
                                  horizontalSpaceSmall,
                                  Text(viewModel.job!.expCTC,
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
                        const Text("Overview",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        // First row
                        Row(
                          children: [
                            JobDetailsStatCard(
                              upperHeading:
                                  "Registered Students(${viewModel.job!.data['registered']})",
                              lowerHeading:
                                  viewModel.getRegisteredStudentsPercentage(
                                      job: viewModel.job!),
                              jobId: viewModel.job!.id[0].toString(),
                              companyName: viewModel.job!.companyName,
                              job: viewModel.job!,
                              detailsType: DetailsType.registered,
                            ),
                            JobDetailsStatCard(
                              detailsType: DetailsType.unregistered,
                              upperHeading:
                                  "Un-Registered Students(${viewModel.job!.data['unregistered']})",
                              jobId: viewModel.job!.id[0].toString(),
                              companyName: viewModel.job!.companyName,
                              lowerHeading:
                                  viewModel.getUnregisteredStudentsPercentage(
                                job: viewModel.job!,
                              ),
                              job: viewModel.job!,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            JobDetailsStatCard(
                              upperHeading:
                                  "Eligible Students(${viewModel.job!.data['total']})",
                              lowerHeading: "50%",
                              companyName: viewModel.job!.companyName,
                              jobId: viewModel.job!.id[0].toString(),
                              job: viewModel.job!,
                              detailsType: DetailsType.all,
                            ),
                            JobDetailsStatCard(
                              upperHeading: "Notify All",
                              lowerHeading: "100%",
                              companyName: viewModel.job!.companyName,
                              jobId: viewModel.job!.id[0].toString(),
                              job: viewModel.job!,
                              detailsType: DetailsType.all,
                            ),
                          ],
                        ),
                        verticalSpaceMedium,
                        JobDescriptionSection(
                          heading: "Job Description",
                          content: viewModel.job!.jobDescription,
                        ),
                        JobDescriptionSection(
                          heading: "Website",
                          content: viewModel.job!.websiteURL,
                          link: true,
                        ),
                        JobDescriptionSection(
                            heading: "Eligible Branches",
                            content: viewModel.job!.printBranches()),
                        JobDescriptionSection(
                            heading: "Expected CTC",
                            content: viewModel.job!.expCTC),
                        JobDescriptionSection(
                            heading: "Registration End Date",
                            content: viewModel.job!.endDate),
                        JobDescriptionSection(
                          heading: "RegistrationLink",
                          content: viewModel.job!.regLink,
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

  @override
  void onViewModelReady(JobDetailsViewModel viewModel) {
    viewModel.init(ids: ids);
  }
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
              style: TextStyle(color: link ? const Color(0xff8e97fd) : null)),
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
