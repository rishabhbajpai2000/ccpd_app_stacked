import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void logOut() {
    final _loginService = locator<LoginService>();
    _loginService.logout();
  }
}
