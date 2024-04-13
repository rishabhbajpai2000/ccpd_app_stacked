import 'package:fluttertoast/fluttertoast.dart';

class UtilsService {
  // this will return todays date in dd/mm/yyyy format.
  static String getTheCurrentDate() {
    DateTime now = DateTime.now();
    String date = "${now.day}/${now.month}/${now.year}";
    return date;
  }

  static void showRelevantToastMessageForJobPostingAPI(
      {required int statusCode}) {
    if (statusCode == 200) {
      Fluttertoast.showToast(msg: "Job Posted Successfully");
    } else if (statusCode == 400)
      Fluttertoast.showToast(msg: "Bad Request");
    else if (statusCode == 500)
      Fluttertoast.showToast(msg: "Internal Server Error");
    else
      Fluttertoast.showToast(msg: "Something went wrong");
  }

  static void showRelevantToastMessageForCCPDUserAddingAPI(
      {required int statusCode}) {
    if (statusCode == 200) {
      Fluttertoast.showToast(msg: "New User Added Successfully");
    } else if (statusCode == 400)
      Fluttertoast.showToast(msg: "Bad Request");
    else if (statusCode == 500)
      Fluttertoast.showToast(msg: "Internal Server Error");
    else
      Fluttertoast.showToast(msg: "Something went wrong");
  }
}
