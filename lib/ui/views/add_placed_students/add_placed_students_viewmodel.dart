// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:ccpd_app_stacked/models/registered_student.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

class AddPlacedStudentsViewModel extends BaseViewModel {
  List<RegisteredStudent>? students;
  void updateSelected(int index, bool bool) {
    students![index].selected = bool;
    notifyListeners();
  }

  Future<void> getStudents(int jobId) async {
    students = await APICallsService().getRegisteredStudents(jobId: jobId);
    students!.sort((a, b) => a.name.compareTo(b.name));

    rebuildUi();
  }

  void addSelectedStudents() async {
    setBusy(true);
    final selectedStudents =
        students!.where((element) => element.selected).toList();
    if (selectedStudents.isEmpty) {
      Fluttertoast.showToast(msg: "Please select students to add");
      setBusy(false);
      return;
    }
    final status = await APICallsService()
        .addPlacedStudents(selectedStudents: selectedStudents);
    if (status)
      Fluttertoast.showToast(msg: "Students added successfully");
    else
      Fluttertoast.showToast(
          msg: "Error adding students, Please try again later.");

    setBusy(false);
  }
}
