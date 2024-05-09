import 'package:ccpd_app_stacked/models/Job.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:stacked/stacked.dart';

class JobDetailsViewModel extends BaseViewModel {
  final _apiCallsService = APICallsService();
  Job? job;
  // Job job = const Job(
  //     id: [552, 553, 554],
  //     managementId: [552, 553, 554],
  //     branchId: [183, 188, 181],
  //     branches: ["EN", "CSE-AIML", "CS"],
  //     companyName: "Wipro",
  //     endDate: "21/12/2021",
  //     expCTC: "3.5 LPA",
  //     file: "https://www.wipro.com/",
  //     jobDescription: "software developer",
  //     regLink: "https://www.wipro.com/",
  //     startDate: "21/12/2021",
  //     minimumPercentage: "60%",
  //     jobLocation: "Bangalore",
  //     websiteURL: "https://www.wipro.com/",
  //     data: {"total": 13, "registered": 3, "unregistered": 10},
  //     jobProfile: 'SWE');

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
