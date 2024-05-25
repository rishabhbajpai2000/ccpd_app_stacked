import 'package:freezed_annotation/freezed_annotation.dart';
part 'registered_student.freezed.dart';
part 'registered_student.g.dart';

@unfreezed
class RegisteredStudent with _$RegisteredStudent {
  factory RegisteredStudent(
      {@JsonKey(name: "job_id") required int jobId,
      @JsonKey(name: "branch_id") required int branchId,
      @JsonKey(name: "company_name") required String companyName,
      @JsonKey(name: "college_admission_number")
      required String collegeAdmissionNumber,
      required String name,
      @JsonKey(name: "roll_number") required String rollNumber,
      @JsonKey(name: "user_id") required String userId,
      @JsonKey(
        defaultValue: false,
      )
      required bool selected,
      required String status}) = _RegisteredStudent;

  factory RegisteredStudent.fromJson(Map<String, dynamic> json) =>
      _$RegisteredStudentFromJson(json);
}
