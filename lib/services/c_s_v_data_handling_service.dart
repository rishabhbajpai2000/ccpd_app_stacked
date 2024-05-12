import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:ccpd_app_stacked/links/a_p_i_s.dart';
import 'package:ccpd_app_stacked/services/a_p_i_calls_service.dart';
import 'package:ccpd_app_stacked/ui/views/students_list/students_list_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:share_plus/share_plus.dart';

class CSVDataHandlingService {
  final _logger = getLogger("CSVDataHandlingService");
  final apiCallsService = APICallsService();

  shareCSV(
      {required String jobId,
      required String companyName,
      required DetailsType detailsType}) async {
    final apiLink =
        "$downloadDataAPILink/${detailsType.toString().split(".").last}?id=$jobId";
    _logger.i(apiLink);
    final csv = await apiCallsService.fetchCSVData(apiLink: apiLink);

    // Write the CSV data to a file
    final directory = await getApplicationDocumentsDirectory();
    final file = File(
        '${directory.path}/$companyName - ${detailsType.toString().split(".").last}.csv');
    await file.writeAsString(csv);

    // Share the file
    final result = await Share.shareXFiles(
      [XFile(file.path)],
      text: "Here is the CSV file for the job with ID $jobId",
    );

    if (result.status == ShareResultStatus.success) {
      Fluttertoast.showToast(msg: "CSV file shared successfully");
      _logger.i("CSV file shared successfully");
    } else {
      // Fluttertoast.showToast(msg: "Failed to share CSV file");
      _logger.e("Failed to share CSV file");
    }
  }

  // downloadCSV({required String jobId}) async {
  //   final apiCallsService = APICallsService();
  //   final csv = await apiCallsService.fetchCSVData();
  //   _logger.i(csv);

  //   // Write the CSV data to a file in the Downloads directory
  //   final directory = await getDownloadsDirectory();
  //   _logger.i(directory?.path);
  //   final file = File('${directory?.path}/$jobId.csv');
  //   await file.writeAsString(csv);

  //   _logger.i("CSV file downloaded successfully");
  // }
}
