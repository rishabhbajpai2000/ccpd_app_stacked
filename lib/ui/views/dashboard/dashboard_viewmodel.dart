import 'package:ccpd_app_stacked/models/JobDashboard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  List<JobOnDashboard> jobs = [
    JobOnDashboard(
        companyName: "TCS",
        driveDate: "10th Oct 21",
        registered: "100",
        pending: "50"),
    JobOnDashboard(
        companyName: "Infosys",
        driveDate: "12th Oct 21",
        registered: "200",
        pending: "100"),
    JobOnDashboard(
        companyName: "Wipro",
        driveDate: "15th Oct 21",
        registered: "150",
        pending: "75"),
    JobOnDashboard(
        companyName: "HCL",
        driveDate: "20th Oct 21",
        registered: "300",
        pending: "150"),
    JobOnDashboard(
        companyName: "TCS",
        driveDate: "10th Oct 21",
        registered: "100",
        pending: "50"),
    JobOnDashboard(
        companyName: "Infosys",
        driveDate: "12th Oct 21",
        registered: "200",
        pending: "100"),
    JobOnDashboard(
        companyName: "Wipro",
        driveDate: "15th Oct 21",
        registered: "150",
        pending: "75"),
    JobOnDashboard(
        companyName: "HCL",
        driveDate: "20th Oct 21",
        registered: "300",
        pending: "150"),
    JobOnDashboard(
        companyName: "TCS",
        driveDate: "10th Oct 21",
        registered: "100",
        pending: "50"),
    JobOnDashboard(
        companyName: "Infosys",
        driveDate: "12th Oct 21",
        registered: "200",
        pending: "100"),
    JobOnDashboard(
        companyName: "Wipro",
        driveDate: "15th Oct 21",
        registered: "150",
        pending: "75"),
    JobOnDashboard(
        companyName: "HCL",
        driveDate: "20th Oct 21",
        registered: "300",
        pending: "150"),
    JobOnDashboard(
        companyName: "TCS",
        driveDate: "10th Oct 21",
        registered: "100",
        pending: "50"),
    JobOnDashboard(
        companyName: "Infosys",
        driveDate: "12th Oct 21",
        registered: "200",
        pending: "100"),
    JobOnDashboard(
        companyName: "Wipro",
        driveDate: "15th Oct 21",
        registered: "150",
        pending: "75"),
    JobOnDashboard(
        companyName: "HCL",
        driveDate: "20th Oct 21",
        registered: "300",
        pending: "150"),
  ];
  onTapBanner() {
    Fluttertoast.showToast(msg: "Coming Soon!");
  }
}
