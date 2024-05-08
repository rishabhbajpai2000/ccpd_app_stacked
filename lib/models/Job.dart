import 'package:freezed_annotation/freezed_annotation.dart';

part 'Job.freezed.dart';
part 'Job.g.dart';
@freezed
class Job with _$Job {
  const Job._();
  const factory Job({
    required List<int> id,
    required List<int> managementId,
    required List<int> branchId,
    required List<String> branches,
    required String companyName,
    required String endDate,
    required String expCTC,
    required String file,
    required String jobDescription,
    required String jobProfile,
    required String regLink,
    required String startDate,
    required String minimumPercentage,
    required String jobLocation,
    required String websiteURL,
    required Map<String, int> data,
  }) = _Job;

factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  String printBranches() {
    return branches.join(" | ");
  }
}
