import 'dart:convert';

import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/links/a_p_i_s.dart';
import 'package:ccpd_app_stacked/models/Job.dart';
import 'package:ccpd_app_stacked/models/job_on_dashboard.dart';
import 'package:ccpd_app_stacked/models/profile_data.dart';
import 'package:ccpd_app_stacked/models/registered_student.dart';
import 'package:ccpd_app_stacked/models/student.dart';
import 'package:ccpd_app_stacked/services/notification_service.dart';
import 'package:ccpd_app_stacked/services/utils_service.dart';
import 'package:ccpd_app_stacked/ui/views/students_list/students_list_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

    // sending notification
    try {
      if (statusCode == 200) {
        _logger.i("Job Posted Successfully");
        final int jobId = jsonDecode(response.body)[0];
        _logger.i(jobId);
        final List<String> userIds = await getAllEligibleStudentsIds(jobId: jobId);
        final NotificationService notificationService = NotificationService();
        await notificationService.sendNotification(
            users: userIds,
            title: "New Job: $companyName",
            description:
                "Job in $companyName, with CTC $expectedCTC posted, please apply fast",
            data: {"jobId": jobId.toString(), "route": "job-details"});
        Fluttertoast.showToast(
            msg:
                "All the students have been successfully notified about the job posting");
      }
    } catch (e) {
      _logger.e(e);
    }
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

  Future<Map<String, dynamic>> getDashboardDisplayData() async {
    Map<String, dynamic> data = {};
    final response = await http.get(Uri.parse(dashboardDataAPILink));
    _logger.i(response.body);
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      return data;
    }
    return data;
  }

  fetchCSVData({required String apiLink}) async {
    final response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      return response.body;
    }
  }

  Future<Job> getJobDetails({required List<int> ids}) async {
    String api = jobDetailsAPILink + ids[0].toString();
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return Job.fromJson(data);
    }
    throw Exception("Failed to load the job details");
  }

  /// this will return the list of students based on the job and the details type
  Future<List<Student>> getStudents(Job job, DetailsType detailsType) async {
    List<Student> students = [];
    String api =
        "$studentDetailsAPI/${detailsType.toString().split('.').last}?jobId=${job.id[0]}";
    _logger.i(api);
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      try {
        List<dynamic> data = jsonDecode(response.body);
        for (var student in data) {
          students.add(Student.fromJson(student));
        }
      } catch (e) {
        _logger.e(e);
      }
    }

    return students;
  }

  Future<ProfileData?> getProfileData() async {
    final api =
        "$profileDataAPILink${Supabase.instance.client.auth.currentUser!.id}";
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return ProfileData.fromJson(data);
    }
    return null;
  }

  Future<List<RegisteredStudent>> getRegisteredStudents(
      {required int jobId}) async {
    List<RegisteredStudent> students = [];
    final response = await http.get(Uri.parse("$registeredStudentsAPI$jobId"));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      for (var student in data) {
        students.add(RegisteredStudent.fromJson(student));
      }
    }
    return students;
  }

  Future<bool> addPlacedStudents(
      {required List<RegisteredStudent> selectedStudents}) async {
    List<String> studentIds = [];
    for (var student in selectedStudents) {
      studentIds.add(student.userId);
    }
    Map<String, dynamic> body = {
      "companyName": selectedStudents[0].companyName,
      "id": studentIds
    };
    String data = jsonEncode(body);
    final response = await http.post(Uri.parse(placedStudentsAPI),
        headers: headers, body: data);
    if (response.statusCode == 200) {
      return true;
    } else {
      _logger.e(response.statusCode);
      return false;
    }
  }

  static Future<List<String>> getAllEligibleStudentsIds(
      {required int jobId}) async {
    List<String> userIds = [];
    final response =
        await http.get(Uri.parse("$allEligibleNotifyStudentsAPI$jobId"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final users = data[0].split(",");
      userIds = users;
      _logger.i(users);
    }
    return userIds;
  }

  static Future<List<String>> getAllRegisteredStudentsIds(
      {required int jobId}) async {
    List<String> userIds = [];
    final response =
        await http.get(Uri.parse("$registeredNotifyStudentsAPI$jobId"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final users = data[0].split(",");
      userIds = users;
      _logger.i(users);
    }
    return userIds;
  }

  static Future<List<String>> getAllUnRegisteredStudentsIds(
      {required int jobId}) async {
    List<String> userIds = [];
    final response =
        await http.get(Uri.parse("$unregisteredNotifyStudentsAPI$jobId"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final users = data[0].split(",");
      userIds = users;
      _logger.i(users);
    }
    return userIds;
  }
}
