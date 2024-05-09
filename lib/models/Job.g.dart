// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      id: (json['id'] as List<dynamic>).map((e) => e as int).toList(),
      managementId: (json['management_id'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      branchId:
          (json['branch_id'] as List<dynamic>).map((e) => e as int).toList(),
      branches:
          (json['branches'] as List<dynamic>).map((e) => e as String).toList(),
      companyName: json['company_name'] as String,
      endDate: json['end_date'] as String,
      expCTC: json['exp_ctc'] as String,
      file: json['file'] as String,
      jobDescription: json['job_description'] as String,
      jobProfile: json['job_profile'] as String,
      regLink: json['reg_link'] as String,
      startDate: json['start_date'] as String,
      minimumPercentage: json['minimum_percentage'] as String,
      jobLocation: json['job_location'] as String,
      websiteURL: json['website_url'] as String,
      data: Map<String, int>.from(json['data'] as Map),
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'id': instance.id,
      'management_id': instance.managementId,
      'branch_id': instance.branchId,
      'branches': instance.branches,
      'company_name': instance.companyName,
      'end_date': instance.endDate,
      'exp_ctc': instance.expCTC,
      'file': instance.file,
      'job_description': instance.jobDescription,
      'job_profile': instance.jobProfile,
      'reg_link': instance.regLink,
      'start_date': instance.startDate,
      'minimum_percentage': instance.minimumPercentage,
      'job_location': instance.jobLocation,
      'website_url': instance.websiteURL,
      'data': instance.data,
    };
