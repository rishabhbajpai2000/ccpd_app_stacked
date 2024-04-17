import 'package:freezed_annotation/freezed_annotation.dart';

part 'JobDashboard.freezed.dart';


@freezed
class JobOnDashboard with _$JobOnDashboard {
  const JobOnDashboard._();
  const factory JobOnDashboard(
      {required String companyName,
      required String driveDate,
      required String registered,
      required String pending}) = _JobOnDashboard;
}
// flutter pub run build_runner watch --delete-conflicting-outputs