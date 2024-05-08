// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      id: (json['id'] as List<dynamic>).map((e) => e as int).toList(),
      managementId:
          (json['managementId'] as List<dynamic>).map((e) => e as int).toList(),
      branchId:
          (json['branchId'] as List<dynamic>).map((e) => e as int).toList(),
      branches:
          (json['branches'] as List<dynamic>).map((e) => e as String).toList(),
      companyName: json['companyName'] as String,
      endDate: json['endDate'] as String,
      expCTC: json['expCTC'] as String,
      file: json['file'] as String,
      jobDescription: json['jobDescription'] as String,
      jobProfile: json['jobProfile'] as String,
      regLink: json['regLink'] as String,
      startDate: json['startDate'] as String,
      minimumPercentage: json['minimumPercentage'] as String,
      jobLocation: json['jobLocation'] as String,
      websiteURL: json['websiteURL'] as String,
      data: Map<String, int>.from(json['data'] as Map),
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'id': instance.id,
      'managementId': instance.managementId,
      'branchId': instance.branchId,
      'branches': instance.branches,
      'companyName': instance.companyName,
      'endDate': instance.endDate,
      'expCTC': instance.expCTC,
      'file': instance.file,
      'jobDescription': instance.jobDescription,
      'jobProfile': instance.jobProfile,
      'regLink': instance.regLink,
      'startDate': instance.startDate,
      'minimumPercentage': instance.minimumPercentage,
      'jobLocation': instance.jobLocation,
      'websiteURL': instance.websiteURL,
      'data': instance.data,
    };
