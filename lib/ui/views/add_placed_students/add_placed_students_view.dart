import 'package:ccpd_app_stacked/models/registered_student.dart';
import 'package:ccpd_app_stacked/ui/common/ui_helpers.dart';
import 'package:ccpd_app_stacked/ui/views/job_details/job_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'add_placed_students_viewmodel.dart';

class AddPlacedStudentsView extends StackedView<AddPlacedStudentsViewModel> {
  final int jobId;
  const AddPlacedStudentsView({Key? key, required this.jobId})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddPlacedStudentsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Update Status",
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                viewModel.addSelectedStudents();
              },
              child: Text(
                viewModel.isBusy ? "Processing " : "Done✅",
              ),
            ),
            horizontalSpaceSmall
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView(
          children: [
            const TableHeader(),
            if (viewModel.students == null)
              const Center(
                child: CircularProgressIndicator(),
              )
            else if (viewModel.students != null && viewModel.students!.isEmpty)
              const Center(
                child: Text("No students found"),
              )
            else if (viewModel.students != null &&
                viewModel.students!.isNotEmpty)
              SizedBox(
                height: screenHeight(context) * 0.7,
                child: ListView.builder(
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: viewModel.students!.length,
                    itemBuilder: (context, index) {
                      final student = viewModel.students![index];
                      return TableRowStudent(
                        student: student,
                        viewModel: viewModel,
                        index: index,
                      );
                    }),
              ),
            verticalSpaceMedium,
            JobDetailsPageButton(
              title: viewModel.isBusy ? " Processing" : "Add Selected Students",
              titleColor: Colors.black,
              backgroundColor: Colors.transparent,
              onTap: () {
                viewModel.addSelectedStudents();
              },
              showBorder: true,
            ),
          ],
        ),
      ),
    );
  }

  @override
  AddPlacedStudentsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddPlacedStudentsViewModel();

  @override
  void onViewModelReady(AddPlacedStudentsViewModel viewModel) async {
    await viewModel.getStudents(jobId);
  }
}

class TableRowStudent extends StatelessWidget {
  const TableRowStudent({
    super.key,
    required this.student,
    required this.viewModel,
    required this.index,
  });
  final int index;
  final AddPlacedStudentsViewModel viewModel;

  final RegisteredStudent student;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: viewModel.students![index].selected
            ? Colors.grey[200]
            : Colors.transparent,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Checkbox(
                value: viewModel.students![index].selected,
                onChanged: (value) {
                  viewModel.students![index].selected = value!;
                  viewModel.notifyListeners();
                }),
          ),
          TableCellStudent(value: student.name),
          TableCellStudent(
            value: student.rollNumber,
            width: 0.3,
          ),
          TableCellStudent(
            value: student.status,
            width: 0.2,
          ),
        ],
      ),
    );
  }
}

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(
          height: 20,
          thickness: 2,
          color: Colors.blue,
        ),
        Row(
          children: [
            SizedBox(
              width: 50,
            ),
            TableCellStudent(
              value: "Student Name",
              blue: true,
            ),
            TableCellStudent(
              value: "Roll Number",
              blue: true,
              width: 0.3,
            ),
            TableCellStudent(
              value: "Status",
              blue: true,
              width: 0.2,
            ),
          ],
        ),
        Divider(
          height: 20,
          thickness: 2,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class TableCellStudent extends StatelessWidget {
  final String value;
  final bool blue;
  final double width;

  const TableCellStudent(
      {super.key, required this.value, this.blue = false, this.width = 0.25});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: screenWidth(context) * width,
        child: Text(value,
            style: blue
                ? TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)
                : null));
  }
}
