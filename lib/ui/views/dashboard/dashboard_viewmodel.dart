import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/models/job_on_dashboard.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  final _apiCallService = locator<APICallsService>();

  List<JobOnDashboard>? jobs;
  onTapBanner() {
    Fluttertoast.showToast(msg: "Coming Soon!");
  }

  Future<void> init() async {
    jobs = await _apiCallService.getJobsOnDashboard();
    notifyListeners();
  }

  String trimString({required String string, required int length}) {
    if (string.length > length) {
      return "${string.substring(0, length)}...";
    } else {
      return string;
    }
  }
}
