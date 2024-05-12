import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:ccpd_app_stacked/services/c_s_v_data_handling_service.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:ccpd_app_stacked/services/notification_service.dart';
import 'package:csv/csv.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
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

  void parseCSV() async {
    // final _csvDataHandlingService = locator<CSVDataHandlingService>();
    // _csvDataHandlingService.shareCSV(
    //     jobId: "558", dataType: "registered", companyName: "Test Company");
  }
}
