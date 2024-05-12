import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/models/job_on_dashboard.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:ccpd_app_stacked/services/c_s_v_data_handling_service.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:ccpd_app_stacked/services/notification_service.dart';
import 'package:csv/csv.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  List<JobOnDashboard>? jobs = [
    JobOnDashboard(
        companyName: "TCS",
        driveDate: "23/12/2001",
        registered: 10,
        pending: 10,
        id: [1],
        postedBy: "Rishabh")
  ];
  void logOut() {
    final loginService = locator<LoginService>();
    loginService.logout();
  }

  void sendNotification() async {
    final notificationService = locator<NotificationService>();
    await notificationService.sendNotification(
      users: ["61b61c55-9458-4b97-adfd-0b33e3f625c4"],
      title: "New Job Posted - Please Apply Fast",
      description: "Job with ID 558 has been posted. Please apply fast.",
      type: "test",
      data: {"jobId": "558", "route": "job-details"},
    );
  }
}
