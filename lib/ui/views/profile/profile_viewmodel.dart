import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:ccpd_app_stacked/services/notification_service.dart';
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
      title: "rishabh new notification2",
      description: "This is a test notification",
      type: "test",
      data: {"test": "test"},
    );
  }
}
