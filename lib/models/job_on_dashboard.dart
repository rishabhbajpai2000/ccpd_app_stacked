import 'package:freezed_annotation/freezed_annotation.dart';
part 'job_on_dashboard.g.dart';
part 'job_on_dashboard.freezed.dart';

@freezed
class JobOnDashboard with _$JobOnDashboard {
  const JobOnDashboard._();
  const factory JobOnDashboard(
      {required String companyName,
      required String driveDate,
      required int registered,
      required int pending,
      required List<int> id,
      required String postedBy}) = _JobOnDashboard;

  factory JobOnDashboard.fromJson(Map<String, dynamic> json) =>
      _$JobOnDashboardFromJson(json);
  @override
  Map<String, dynamic> toJson() =>
      _$$JobOnDashboardImplToJson(this as _$JobOnDashboardImpl);
}
// flutter pub run build_runner watch --delete-conflicting-outputs
