import 'package:ccpd_app_stacked/app/app.router.dart';
import 'package:ccpd_app_stacked/models/Job.dart';
import 'package:ccpd_app_stacked/services/c_s_v_data_handling_service.dart';
import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:ccpd_app_stacked/ui/views/students_list/students_list_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'job_details_stat_card_model.dart';

class JobDetailsStatCard extends StackedView<JobDetailsStatCardModel> {
  final String upperHeading, lowerHeading;
  final String jobId;
  final String companyName;
  final GlobalKey iconKey = GlobalKey();

  final Job job;
  final DetailsType detailsType;

  JobDetailsStatCard(
      {super.key,
      required this.upperHeading,
      required this.lowerHeading,
      required this.jobId,
      required this.companyName,
      required this.job,
      required this.detailsType});

  @override
  Widget builder(
    BuildContext context,
    JobDetailsStatCardModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          if (detailsType == DetailsType.notifyAll) {
            return;
          }
          NavigationService()
              .navigateToStudentsListView(job: job, detailsType: detailsType);
        },
        child: Container(
          height: 110,
          width: MediaQuery.of(context).size.width * 0.40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffeef2ff),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(upperHeading,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                    detailsType != DetailsType.all
                        ? IconButton(
                            key: iconKey,
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {
                              final RenderBox? renderBox =
                                  iconKey.currentContext?.findRenderObject()
                                      as RenderBox?;
                              if (renderBox != null) {
                                final position =
                                    renderBox.localToGlobal(Offset.zero);
                                final size = renderBox.size;

                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position.dx,
                                    position.dy + size.height,
                                    position.dx,
                                    position.dy,
                                  ),
                                  items: <PopupMenuEntry>[
                                    // PopupMenuItem(
                                    //   onTap: () async {
                                    //     final _csvDataService =
                                    //         CSVDataHandlingService();
                                    //     await _csvDataService.downloadCSV(jobId: jobId);
                                    //   },
                                    //   value: 1,
                                    //   child: Row(
                                    //     children: [
                                    //       Icon(Icons.download_outlined),
                                    //       horizontalSpaceSmall,
                                    //       Text("Download"),
                                    //     ],
                                    //   ),
                                    // ),
                                    PopupMenuItem(
                                      onTap: () async {
                                        final csvDataService =
                                            CSVDataHandlingService();
                                        await csvDataService.shareCSV(
                                            jobId: jobId,
                                            detailsType: detailsType,
                                            companyName: companyName);
                                      },
                                      value: 2,
                                      child: const Row(
                                        children: [
                                          Icon(Icons.share_outlined),
                                          horizontalSpaceSmall,
                                          Text("Share Data"),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem(
                                      onTap: () {
                                        // TODO: Implement notify
                                        viewModel.notify(
                                            detailsType: detailsType,
                                            jobId: jobId,
                                            job: job);
                                      },
                                      value: 2,
                                      child: const Row(
                                        children: [
                                          Icon(Icons.notifications_outlined),
                                          horizontalSpaceSmall,
                                          Text("Notify"),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }
                            },
                          )
                        : const SizedBox()
                  ],
                ),
                verticalSpaceMedium,
                Text(
                  lowerHeading,
                  style: const TextStyle(fontSize: 12, color: Colors.blue),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  JobDetailsStatCardModel viewModelBuilder(
    BuildContext context,
  ) =>
      JobDetailsStatCardModel();
}
