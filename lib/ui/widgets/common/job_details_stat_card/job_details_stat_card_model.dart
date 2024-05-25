import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/models/Job.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:ccpd_app_stacked/services/notification_service.dart';
import 'package:ccpd_app_stacked/ui/views/students_list/students_list_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

class JobDetailsStatCardModel extends BaseViewModel {
  final _logger = getLogger("JobDetailsStatCardModel");
  final NotificationService _notificationService = NotificationService();
  void notify(
      {required DetailsType detailsType,
      required String jobId,
      required Job job}) async {
    _logger.i(detailsType);
    if (detailsType == DetailsType.all) {
      return;
    }
    List<String> ids = [];
    String title = "";
    String description = "";
    Map<String, dynamic> data = {
      "jobId": jobId.toString(),
      "route": "job-details"
    };
    try {
      if (detailsType == DetailsType.registered) {
        ids = await APICallsService.getAllRegisteredStudentsIds(
            jobId: int.parse(jobId));
        title =
            "${job.companyName} registration is closing soon, Please check your details in the application. ";
        description =
            "CTC: ${job.expCTC} LPA job's registration is closing on ${job.endDate}, please check your details.";
      }
      if (detailsType == DetailsType.unregistered) {
        ids = await APICallsService.getAllUnRegisteredStudentsIds(
            jobId: int.parse(jobId));

        title =
            "You have not registered for ${job.companyName}, please apply fast.";
        description =
            "CTC: ${job.expCTC} LPA job has been posted by ${job.companyName}, please check your details.";
      }
      if (detailsType == DetailsType.notifyAll) {
        ids = await APICallsService.getAllEligibleStudentsIds(
            jobId: int.parse(jobId));
        title = "New Job: ${job.companyName}";
        description =
            "Job in ${job.companyName}, with CTC ${job.expCTC} posted, please apply fast";
      }

      await _notificationService.sendNotification(
          users: ids, title: title, description: description, data: data);
      Fluttertoast.showToast(
          msg:
              "All the students have been successfully notified about the job posting");
    } catch (e) {
      _logger.e("Error: $e");
      Fluttertoast.showToast(msg: "Unable to notify the students");
    }
  }
}
