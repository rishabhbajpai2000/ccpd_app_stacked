import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel {


  void logOut() {
    final loginService = locator<LoginService>();
    loginService.logout();
  }
}
