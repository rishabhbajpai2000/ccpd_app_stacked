import 'package:freezed_annotation/freezed_annotation.dart';

part 'Job.freezed.dart';
part 'Job.g.dart';

@freezed
class Job with _$Job {
  const Job._();
  const factory Job({
    required List<int> id,
    @JsonKey(name: "management_id") required List<int> managementId,
    @JsonKey(name: "branch_id") required List<int> branchId,
    required List<String> branches,
    @JsonKey(name: "company_name") required String companyName,
    @JsonKey(name: "end_date") required String endDate,
    @JsonKey(name: "exp_ctc") required String expCTC,
    required String file,
    @JsonKey(name: "job_description") required String jobDescription,
    @JsonKey(name: "job_profile") required String jobProfile,
    @JsonKey(name: "reg_link") required String regLink,
    @JsonKey(name: "start_date") required String startDate,
    @JsonKey(name: "minimum_percentage") required String minimumPercentage,
    @JsonKey(name: "job_location") required String jobLocation,
    @JsonKey(name: "website_url") required String websiteURL,
    required Map<String, int> data,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  String printBranches() {
    return branches.join(" | ");
  }
}
