import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:ccpd_app_stacked/services/notification_service.dart';
import 'package:stacked/stacked.dart';
import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _loginService = locator<LoginService>();
  final _logger = getLogger("StartupViewModel");

  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
    bool hasLoggedInUser = await _loginService.isLoggedIn();
    _logger.i("hasLoggedInUser: $hasLoggedInUser");
    if (hasLoggedInUser) {
      final notificationService = NotificationService();
      await notificationService.initOneSignal();
      _navigationService.replaceWith(Routes.homeView);
    } else
      _navigationService.replaceWith(Routes.initialWelcomeScreenView);
  }
}
