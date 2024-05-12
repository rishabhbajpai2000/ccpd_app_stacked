import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/models/Job.dart';
import 'package:ccpd_app_stacked/models/student.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:ccpd_app_stacked/ui/views/students_list/students_list_view.dart';
import 'package:stacked/stacked.dart';

class StudentsListViewModel extends BaseViewModel {
  final _api = locator<APICallsService>();
  List<Student>? students;

  Future<void> getStudents(Job job, DetailsType detailsType) async {
    // Call the API to get the students
    students = await _api.getStudents(job, detailsType);
    rebuildUi();
  }
}
