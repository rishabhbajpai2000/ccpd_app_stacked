import 'package:ccpd_app_stacked/models/Job.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:stacked/stacked.dart';

class JobDetailsViewModel extends BaseViewModel {
  final _apiCallsService = APICallsService();
  Job? job;

  String getCompletionPercentage(Job job) {
    return "${((job.data['registered']! / job.data['total']!) * 100).toInt().toString()}%";
  }

  double getCompletionRatio(Job job) {
    return job.data['registered']! / job.data['total']!;
  }

  getRegisteredStudentsPercentage({required Job job}) {
    return "${((job.data['registered']! / job.data['total']!) * 100).toInt().toString()}%";
  }

  getUnregisteredStudentsPercentage({required Job job}) {
    return "${((job.data['unregistered']! / job.data['total']!) * 100).toInt().toString()}%";
  }

  void init({required List<int> ids}) async {
    job = await _apiCallsService.getJobDetails(ids: ids);
    rebuildUi();
  }
}
