import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/services/login_service.dart';
import 'package:ccpd_app_stacked/ui/views/dashboard/dashboard_view.dart';
import 'package:ccpd_app_stacked/ui/views/job_posting/job_posting_view.dart';
import 'package:ccpd_app_stacked/ui/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.person_outline,
  ];

  List<Widget> pagesList = <Widget>[
    DashboardView(),
    ProfileView(),
    JobPostingView(),
  ];

  void logOut() {
    final loginService = locator<LoginService>();
    loginService.logout();
  }
}
