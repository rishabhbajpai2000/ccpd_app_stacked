import 'package:ccpd_app_stacked/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:ccpd_app_stacked/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:ccpd_app_stacked/ui/views/home/home_view.dart';
import 'package:ccpd_app_stacked/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:ccpd_app_stacked/ui/views/initial_welcome_screen/initial_welcome_screen_view.dart';
import 'package:ccpd_app_stacked/ui/views/login/login_view.dart';
import 'package:ccpd_app_stacked/ui/views/sign_up/sign_up_view.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:ccpd_app_stacked/ui/views/dashboard/dashboard_view.dart';
import 'package:ccpd_app_stacked/ui/views/profile/profile_view.dart';
import 'package:ccpd_app_stacked/ui/views/job_posting/job_posting_view.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:ccpd_app_stacked/services/utils_service.dart';
// @stacked-import

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: InitialWelcomeScreenView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: JobPostingView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: LoginService),
    LazySingleton(classType: APICallsService),
    LazySingleton(classType: UtilsService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
