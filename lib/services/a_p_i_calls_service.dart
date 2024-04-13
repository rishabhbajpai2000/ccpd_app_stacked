import 'dart:convert';

import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/links/APIs.dart';
import 'package:ccpd_app_stacked/services/utils_service.dart';
import 'package:file_picker/file_picker.dart';
import "package:http/http.dart" as http;

class APICallsService {
  // this function will be called when the user clicks on the post job button
  // it will take the data from the text fields and send it to the backend
  // the backend will then store the data in the database
  static final _logger = getLogger("APICallsService");
  static Future<int> postTheJob(
      {required String companyName,
      required String jobProfile,
      required String jobDescription,
      required String expectedCTC,
      required String registrationLink,
      required String jDLink,
      required String registrationEndDate}) async {
    String startDate = UtilsService.getTheCurrentDate();

    // the body of the request
    Map<String, String> body = {
      "companyName": companyName,
      "jobDescription": jobDescription,
      "jobProfile": jobProfile,
      "expCTC": expectedCTC,
      "regLink": registrationLink,
      "startDate": startDate,
      "endDate": registrationEndDate,
      "file": jobDescription
    };

    String data = jsonEncode(body);

    // the headers of the request
    Map<String, String> headers = {"Content-type": "application/json"};

    // the request is sent to the backend
    final response = await http.post(Uri.parse(JobPostingAPILink),
        headers: headers, body: data);

    int statusCode = response.statusCode;
    _logger.i("statusCode: $statusCode");
    UtilsService.showRelevantToastMessageForJobPostingAPI(
        statusCode: statusCode);
    return statusCode;
  }

  Future<String> getTheJDLink({PlatformFile? file}) async {
    // TODO: will implement it with the supabase integration. 
    return "www.google.com";
  }
}
