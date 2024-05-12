// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_on_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobOnDashboardImpl _$$JobOnDashboardImplFromJson(Map<String, dynamic> json) =>
    _$JobOnDashboardImpl(
      companyName: json['companyName'] as String,
      driveDate: json['driveDate'] as String,
      registered: json['registered'] as int,
      pending: json['pending'] as int,
      id: (json['id'] as List<dynamic>).map((e) => e as int).toList(),
      postedBy: json['postedBy'] as String,
    );

Map<String, dynamic> _$$JobOnDashboardImplToJson(
        _$JobOnDashboardImpl instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'driveDate': instance.driveDate,
      'registered': instance.registered,
      'pending': instance.pending,
      'id': instance.id,
      'postedBy': instance.postedBy,
    };
