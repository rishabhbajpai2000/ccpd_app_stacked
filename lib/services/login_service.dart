import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/app/app.router.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginService {
  final supabase = Supabase.instance.client;
  final logger = getLogger('LoginService');
  final _navigationService = NavigationService();

  Future<bool> isLoggedIn() async {
    final User? user = supabase.auth.currentUser;
    logger.i('User: $user');
    return user != null;
  }

  Future<AuthResponse> signUpNewUser(
      {required String email,
      required String password,
      required String firstName,
      required String lastName}) async {
    try {
      final AuthResponse res = await supabase.auth.signUp(
        email: email,
        password: password,
        data: {
          'confirmation_sent_at': DateTime.now().toIso8601String(),
        },
      );
      Fluttertoast.showToast(
          msg: "Account created Successfully", fontSize: 16.0);

      final userId = res.user?.id;
      logger.i('userId: $userId');
      await APICallsService.registerNewUser(
          firstName: firstName,
          lastName: lastName,
          userId: userId!,
          email: email);
      _navigationService.navigateToHomeView();
      return res;
    } catch (e) {
      Fluttertoast.showToast(msg: "$e", fontSize: 16.0);
      logger.e(e);
    }
    return AuthResponse();
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  Future<AuthResponse> signInWithEmail(
      {required email, required password}) async {
    try {
      await supabase.auth.signInWithPassword(email: email, password: password);
      Fluttertoast.showToast(msg: "Logged in Successfully", fontSize: 16.0);
      _navigationService.clearStackAndShow(Routes.startupView);
    } catch (e) {
      Fluttertoast.showToast(msg: "$e", fontSize: 16.0);
      logger.e(e);
    }
    return AuthResponse();
  }

  logout() async {
    await supabase.auth.signOut();
    _navigationService.clearStackAndShow(Routes.startupView);
  }
}
