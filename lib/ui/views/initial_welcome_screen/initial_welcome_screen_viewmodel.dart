import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InitialWelcomeScreenViewModel extends BaseViewModel {
  final _navigatorService = locator<NavigationService>();
  void navigateToSignUpScreen() {
    _navigatorService.navigateToSignUpView();
  }

  void navigateToLoginScreen() {
    _navigatorService.navigateToLoginView();
  }
}
