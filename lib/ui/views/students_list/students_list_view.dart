import 'package:ccpd_app_stacked/links/asset_links.dart';
import 'package:ccpd_app_stacked/models/Job.dart';
import 'package:ccpd_app_stacked/models/student.dart';
import 'package:ccpd_app_stacked/services/c_s_v_data_handling_service.dart';
import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'students_list_viewmodel.dart';

enum DetailsType { registered, unregistered, all, notifyAll }

class StudentsListView extends StackedView<StudentsListViewModel> {
  const StudentsListView(
      {Key? key, required this.job, required this.detailsType})
      : super(key: key);
  final Job job;
  final DetailsType detailsType;

  @override
  Widget builder(
    BuildContext context,
    StudentsListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(job.companyName),
            Expanded(child: Container()),
            Image.network(ABESLogoURL)
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView(
          children: [
            verticalSpaceMedium,
            Row(
              children: [
                Text(
                  "${detailsType.toString().split('.').last.toUpperCase()} Students",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: const Icon(Icons.notifications_outlined),
                  onPressed: () {
                    // TODO: Implement notifyAll
                  },
                ),
                horizontalSpaceSmall,
                IconButton(
                  icon: const Icon(Icons.share_outlined),
                  onPressed: () async {
                    final csvDataService = CSVDataHandlingService();
                    await csvDataService.shareCSV(
                        jobId: job.id[0].toString(),
                        detailsType: detailsType,
                        companyName: job.companyName);
                  },
                )
              ],
            ),
            const Divider(
              color: Colors.blue,
              thickness: 1.5,
            ),
            const Row(
              children: [
                TableCell(heading: "Student Name", width: 0.3),
                TableCell(
                  heading: "Roll Number",
                  width: 0.3,
                ),
                TableCell(heading: "CGPA", width: 0.2),
              ],
            ),
            const Divider(
              color: Colors.blue,
              thickness: 1.5,
            ),
            if (viewModel.students == null)
              const Center(child: CircularProgressIndicator())
            else if (viewModel.students != null && viewModel.students!.isEmpty)
              const Center(child: Text("No students found"))
            else if (viewModel.students != null &&
                viewModel.students!.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                itemCount: viewModel.students!.length,
                itemBuilder: (context, index) {
                  final student = viewModel.students![index];
                  return StudentRow(student: student);
                },
              ),
          ],
        ),
      ),
    );
  }

  @override
  StudentsListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StudentsListViewModel();

  @override
  onViewModelReady(StudentsListViewModel viewModel) {
    viewModel.getStudents(job, detailsType);
  }
}

class StudentRow extends StatelessWidget {
  const StudentRow({
    super.key,
    required this.student,
  });

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200, width: 1.5)),
            child: Row(
              children: [
                TableCell(
                  heading: "${student.firstName} ${student.lastName}",
                  type: "normal",
                  width: 0.3,
                ),
                TableCell(
                    heading: student.rollNumber, width: 0.3, type: "normal"),
                TableCell(
                    type: "normal",
                    heading: student.sgpa ?? "Not Found",
                    width: 0.2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TableCell extends StatelessWidget {
  const TableCell({
    super.key,
    required this.heading,
    this.width = 0.3,
    this.type = "heading",
  });
  final String type;
  final String heading;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context) * width,
      child: Text(heading,
          style: type == "heading"
              ? const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)
              : TextStyle()),
    );
  }
}
