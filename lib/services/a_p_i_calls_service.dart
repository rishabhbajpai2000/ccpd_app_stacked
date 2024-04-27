import 'dart:convert';

import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/links/a_p_i_s.dart';
import 'package:ccpd_app_stacked/models/job_on_dashboard.dart';
import 'package:ccpd_app_stacked/services/utils_service.dart';
import 'package:file_picker/file_picker.dart';
import "package:http/http.dart" as http;
import 'package:supabase_flutter/supabase_flutter.dart';

class APICallsService {
  static final _logger = getLogger("APICallsService");

  // the headers of the request
  static Map<String, String> headers = {"Content-type": "application/json"};

  /// this function will be called when the user clicks on the post job button
  /// it will take the data from the text fields and send it to the backend
  /// the backend will then store the data in the database
  static Future<int> postTheJob({
    required String companyName,
    required String jobDescription,
    required String jobProfile,
    required String registrationLink,
    required String registrationEndDate,
    required String jDLink,
    required List<String> eligibleBranches,
    required String percentage,
    required String expectedCTC,
    required String websiteURL,
    required String jobLocation,
  }) async {
    String startDate = UtilsService.getTheCurrentDate();
    String userId = Supabase.instance.client.auth.currentUser!.id;

    // the body of the request
    Map<String, dynamic> body = {
      "companyName": companyName,
      "jobDescription": jobDescription,
      "jobProfile": jobProfile,
      "expCTC": expectedCTC,
      "regLink": registrationLink,
      "startDate": startDate,
      "endDate": registrationEndDate,
      "file": jobDescription,
      "branch": eligibleBranches,
      "minimumPercentage": percentage,
      "userId": userId,
      "websiteUrl": websiteURL,
      "jobLocation": jobLocation
    };
    String data = jsonEncode(body);
    _logger.i(body);

    final response =
        await http.post(Uri.parse(jobAPILink), headers: headers, body: data);

    int statusCode = response.statusCode;
    _logger.i("statusCode: $statusCode");
    UtilsService.showRelevantToastMessageForJobPostingAPI(
        statusCode: statusCode);
    return statusCode;
  }

  static registerNewUser(
      {required String firstName,
      required String lastName,
      required String userId,
      required String email}) async {
    Map<String, String> body = {
      "firstName": firstName,
      "lastName": lastName,
      "userId": userId,
      "email": email
    };
    String data = jsonEncode(body);
    final response = await http.post(Uri.parse(registerCCPDUserAPILink),
        headers: headers, body: data);
    _logger.i("statusCode: ${response.statusCode}");
    UtilsService.showRelevantToastMessageForCCPDUserAddingAPI(
        statusCode: response.statusCode);
  }

  Future<String> getTheJDLink({PlatformFile? file}) async {
    // TODO: will implement it with the supabase integration.
    return "www.google.com";
  }

  Future<List<JobOnDashboard>> getJobsOnDashboard() async {
    List<JobOnDashboard> jobs = [];
    final response = await http.get(Uri.parse(jobAPILink));
    _logger.i(response.body);
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      for (var job in data) {
        jobs.add(JobOnDashboard.fromJson(job));
      }
    }
    return jobs;
  }
}
