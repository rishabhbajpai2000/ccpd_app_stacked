// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ccpd_app_stacked/models/Job.dart' as _i13;
import 'package:ccpd_app_stacked/ui/views/dashboard/dashboard_view.dart' as _i7;
import 'package:ccpd_app_stacked/ui/views/home/home_view.dart' as _i2;
import 'package:ccpd_app_stacked/ui/views/initial_welcome_screen/initial_welcome_screen_view.dart'
    as _i4;
import 'package:ccpd_app_stacked/ui/views/job_details/job_details_view.dart'
    as _i10;
import 'package:ccpd_app_stacked/ui/views/job_posting/job_posting_view.dart'
    as _i9;
import 'package:ccpd_app_stacked/ui/views/login/login_view.dart' as _i5;
import 'package:ccpd_app_stacked/ui/views/profile/profile_view.dart' as _i8;
import 'package:ccpd_app_stacked/ui/views/sign_up/sign_up_view.dart' as _i6;
import 'package:ccpd_app_stacked/ui/views/startup/startup_view.dart' as _i3;
import 'package:ccpd_app_stacked/ui/views/students_list/students_list_view.dart'
    as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i14;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const initialWelcomeScreenView = '/initial-welcome-screen-view';

  static const loginView = '/login-view';

  static const signUpView = '/sign-up-view';

  static const dashboardView = '/dashboard-view';

  static const profileView = '/profile-view';

  static const jobPostingView = '/job-posting-view';

  static const jobDetailsView = '/job-details-view';

  static const studentsListView = '/students-list-view';

  static const all = <String>{
    homeView,
    startupView,
    initialWelcomeScreenView,
    loginView,
    signUpView,
    dashboardView,
    profileView,
    jobPostingView,
    jobDetailsView,
    studentsListView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.initialWelcomeScreenView,
      page: _i4.InitialWelcomeScreenView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i5.LoginView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i6.SignUpView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i7.DashboardView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i8.ProfileView,
    ),
    _i1.RouteDef(
      Routes.jobPostingView,
      page: _i9.JobPostingView,
    ),
    _i1.RouteDef(
      Routes.jobDetailsView,
      page: _i10.JobDetailsView,
    ),
    _i1.RouteDef(
      Routes.studentsListView,
      page: _i11.StudentsListView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.InitialWelcomeScreenView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.InitialWelcomeScreenView(),
        settings: data,
      );
    },
    _i5.LoginView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LoginView(),
        settings: data,
      );
    },
    _i6.SignUpView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SignUpView(),
        settings: data,
      );
    },
    _i7.DashboardView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.DashboardView(),
        settings: data,
      );
    },
    _i8.ProfileView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ProfileView(),
        settings: data,
      );
    },
    _i9.JobPostingView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.JobPostingView(),
        settings: data,
      );
    },
    _i10.JobDetailsView: (data) {
      final args = data.getArgs<JobDetailsViewArguments>(nullOk: false);
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.JobDetailsView(key: args.key, ids: args.ids),
        settings: data,
      );
    },
    _i11.StudentsListView: (data) {
      final args = data.getArgs<StudentsListViewArguments>(nullOk: false);
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.StudentsListView(
            key: args.key, job: args.job, detailsType: args.detailsType),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class JobDetailsViewArguments {
  const JobDetailsViewArguments({
    this.key,
    required this.ids,
  });

  final _i12.Key? key;

  final List<int> ids;

  @override
  String toString() {
    return '{"key": "$key", "ids": "$ids"}';
  }

  @override
  bool operator ==(covariant JobDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.ids == ids;
  }

  @override
  int get hashCode {
    return key.hashCode ^ ids.hashCode;
  }
}

class StudentsListViewArguments {
  const StudentsListViewArguments({
    this.key,
    required this.job,
    required this.detailsType,
  });

  final _i12.Key? key;

  final _i13.Job job;

  final _i11.DetailsType detailsType;

  @override
  String toString() {
    return '{"key": "$key", "job": "$job", "detailsType": "$detailsType"}';
  }

  @override
  bool operator ==(covariant StudentsListViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.job == job &&
        other.detailsType == detailsType;
  }

  @override
  int get hashCode {
    return key.hashCode ^ job.hashCode ^ detailsType.hashCode;
  }
}

extension NavigatorStateExtension on _i14.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInitialWelcomeScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.initialWelcomeScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToJobPostingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.jobPostingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToJobDetailsView({
    _i12.Key? key,
    required List<int> ids,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.jobDetailsView,
        arguments: JobDetailsViewArguments(key: key, ids: ids),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStudentsListView({
    _i12.Key? key,
    required _i13.Job job,
    required _i11.DetailsType detailsType,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.studentsListView,
        arguments: StudentsListViewArguments(
            key: key, job: job, detailsType: detailsType),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInitialWelcomeScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.initialWelcomeScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithJobPostingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.jobPostingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithJobDetailsView({
    _i12.Key? key,
    required List<int> ids,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.jobDetailsView,
        arguments: JobDetailsViewArguments(key: key, ids: ids),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStudentsListView({
    _i12.Key? key,
    required _i13.Job job,
    required _i11.DetailsType detailsType,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.studentsListView,
        arguments: StudentsListViewArguments(
            key: key, job: job, detailsType: detailsType),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
