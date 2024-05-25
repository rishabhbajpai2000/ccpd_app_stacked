// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisteredStudentImpl _$$RegisteredStudentImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisteredStudentImpl(
      jobId: json['job_id'] as int,
      branchId: json['branch_id'] as int,
      companyName: json['company_name'] as String,
      collegeAdmissionNumber: json['college_admission_number'] as String,
      name: json['name'] as String,
      rollNumber: json['roll_number'] as String,
      userId: json['user_id'] as String,
      selected: json['selected'] as bool? ?? false,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$RegisteredStudentImplToJson(
        _$RegisteredStudentImpl instance) =>
    <String, dynamic>{
      'job_id': instance.jobId,
      'branch_id': instance.branchId,
      'company_name': instance.companyName,
      'college_admission_number': instance.collegeAdmissionNumber,
      'name': instance.name,
      'roll_number': instance.rollNumber,
      'user_id': instance.userId,
      'selected': instance.selected,
      'status': instance.status,
    };
