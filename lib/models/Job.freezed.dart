// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  List<int> get id => throw _privateConstructorUsedError;
  @JsonKey(name: "management_id")
  List<int> get managementId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  List<int> get branchId => throw _privateConstructorUsedError;
  List<String> get branches => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "exp_ctc")
  String get expCTC => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;
  @JsonKey(name: "job_description")
  String get jobDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "job_profile")
  String get jobProfile => throw _privateConstructorUsedError;
  @JsonKey(name: "reg_link")
  String get regLink => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_percentage")
  String get minimumPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "job_location")
  String get jobLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "website_url")
  String get websiteURL => throw _privateConstructorUsedError;
  Map<String, int> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {List<int> id,
      @JsonKey(name: "management_id") List<int> managementId,
      @JsonKey(name: "branch_id") List<int> branchId,
      List<String> branches,
      @JsonKey(name: "company_name") String companyName,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "exp_ctc") String expCTC,
      String file,
      @JsonKey(name: "job_description") String jobDescription,
      @JsonKey(name: "job_profile") String jobProfile,
      @JsonKey(name: "reg_link") String regLink,
      @JsonKey(name: "start_date") String startDate,
      @JsonKey(name: "minimum_percentage") String minimumPercentage,
      @JsonKey(name: "job_location") String jobLocation,
      @JsonKey(name: "website_url") String websiteURL,
      Map<String, int> data});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? managementId = null,
    Object? branchId = null,
    Object? branches = null,
    Object? companyName = null,
    Object? endDate = null,
    Object? expCTC = null,
    Object? file = null,
    Object? jobDescription = null,
    Object? jobProfile = null,
    Object? regLink = null,
    Object? startDate = null,
    Object? minimumPercentage = null,
    Object? jobLocation = null,
    Object? websiteURL = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as List<int>,
      managementId: null == managementId
          ? _value.managementId
          : managementId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      branches: null == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      expCTC: null == expCTC
          ? _value.expCTC
          : expCTC // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      jobProfile: null == jobProfile
          ? _value.jobProfile
          : jobProfile // ignore: cast_nullable_to_non_nullable
              as String,
      regLink: null == regLink
          ? _value.regLink
          : regLink // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      minimumPercentage: null == minimumPercentage
          ? _value.minimumPercentage
          : minimumPercentage // ignore: cast_nullable_to_non_nullable
              as String,
      jobLocation: null == jobLocation
          ? _value.jobLocation
          : jobLocation // ignore: cast_nullable_to_non_nullable
              as String,
      websiteURL: null == websiteURL
          ? _value.websiteURL
          : websiteURL // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> id,
      @JsonKey(name: "management_id") List<int> managementId,
      @JsonKey(name: "branch_id") List<int> branchId,
      List<String> branches,
      @JsonKey(name: "company_name") String companyName,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "exp_ctc") String expCTC,
      String file,
      @JsonKey(name: "job_description") String jobDescription,
      @JsonKey(name: "job_profile") String jobProfile,
      @JsonKey(name: "reg_link") String regLink,
      @JsonKey(name: "start_date") String startDate,
      @JsonKey(name: "minimum_percentage") String minimumPercentage,
      @JsonKey(name: "job_location") String jobLocation,
      @JsonKey(name: "website_url") String websiteURL,
      Map<String, int> data});
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? managementId = null,
    Object? branchId = null,
    Object? branches = null,
    Object? companyName = null,
    Object? endDate = null,
    Object? expCTC = null,
    Object? file = null,
    Object? jobDescription = null,
    Object? jobProfile = null,
    Object? regLink = null,
    Object? startDate = null,
    Object? minimumPercentage = null,
    Object? jobLocation = null,
    Object? websiteURL = null,
    Object? data = null,
  }) {
    return _then(_$JobImpl(
      id: null == id
          ? _value._id
          : id // ignore: cast_nullable_to_non_nullable
              as List<int>,
      managementId: null == managementId
          ? _value._managementId
          : managementId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      branchId: null == branchId
          ? _value._branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      branches: null == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      expCTC: null == expCTC
          ? _value.expCTC
          : expCTC // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      jobProfile: null == jobProfile
          ? _value.jobProfile
          : jobProfile // ignore: cast_nullable_to_non_nullable
              as String,
      regLink: null == regLink
          ? _value.regLink
          : regLink // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      minimumPercentage: null == minimumPercentage
          ? _value.minimumPercentage
          : minimumPercentage // ignore: cast_nullable_to_non_nullable
              as String,
      jobLocation: null == jobLocation
          ? _value.jobLocation
          : jobLocation // ignore: cast_nullable_to_non_nullable
              as String,
      websiteURL: null == websiteURL
          ? _value.websiteURL
          : websiteURL // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl extends _Job {
  const _$JobImpl(
      {required final List<int> id,
      @JsonKey(name: "management_id") required final List<int> managementId,
      @JsonKey(name: "branch_id") required final List<int> branchId,
      required final List<String> branches,
      @JsonKey(name: "company_name") required this.companyName,
      @JsonKey(name: "end_date") required this.endDate,
      @JsonKey(name: "exp_ctc") required this.expCTC,
      required this.file,
      @JsonKey(name: "job_description") required this.jobDescription,
      @JsonKey(name: "job_profile") required this.jobProfile,
      @JsonKey(name: "reg_link") required this.regLink,
      @JsonKey(name: "start_date") required this.startDate,
      @JsonKey(name: "minimum_percentage") required this.minimumPercentage,
      @JsonKey(name: "job_location") required this.jobLocation,
      @JsonKey(name: "website_url") required this.websiteURL,
      required final Map<String, int> data})
      : _id = id,
        _managementId = managementId,
        _branchId = branchId,
        _branches = branches,
        _data = data,
        super._();

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  final List<int> _id;
  @override
  List<int> get id {
    if (_id is EqualUnmodifiableListView) return _id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_id);
  }

  final List<int> _managementId;
  @override
  @JsonKey(name: "management_id")
  List<int> get managementId {
    if (_managementId is EqualUnmodifiableListView) return _managementId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_managementId);
  }

  final List<int> _branchId;
  @override
  @JsonKey(name: "branch_id")
  List<int> get branchId {
    if (_branchId is EqualUnmodifiableListView) return _branchId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branchId);
  }

  final List<String> _branches;
  @override
  List<String> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  @JsonKey(name: "company_name")
  final String companyName;
  @override
  @JsonKey(name: "end_date")
  final String endDate;
  @override
  @JsonKey(name: "exp_ctc")
  final String expCTC;
  @override
  final String file;
  @override
  @JsonKey(name: "job_description")
  final String jobDescription;
  @override
  @JsonKey(name: "job_profile")
  final String jobProfile;
  @override
  @JsonKey(name: "reg_link")
  final String regLink;
  @override
  @JsonKey(name: "start_date")
  final String startDate;
  @override
  @JsonKey(name: "minimum_percentage")
  final String minimumPercentage;
  @override
  @JsonKey(name: "job_location")
  final String jobLocation;
  @override
  @JsonKey(name: "website_url")
  final String websiteURL;
  final Map<String, int> _data;
  @override
  Map<String, int> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'Job(id: $id, managementId: $managementId, branchId: $branchId, branches: $branches, companyName: $companyName, endDate: $endDate, expCTC: $expCTC, file: $file, jobDescription: $jobDescription, jobProfile: $jobProfile, regLink: $regLink, startDate: $startDate, minimumPercentage: $minimumPercentage, jobLocation: $jobLocation, websiteURL: $websiteURL, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            const DeepCollectionEquality().equals(other._id, _id) &&
            const DeepCollectionEquality()
                .equals(other._managementId, _managementId) &&
            const DeepCollectionEquality().equals(other._branchId, _branchId) &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.expCTC, expCTC) || other.expCTC == expCTC) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.jobProfile, jobProfile) ||
                other.jobProfile == jobProfile) &&
            (identical(other.regLink, regLink) || other.regLink == regLink) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.minimumPercentage, minimumPercentage) ||
                other.minimumPercentage == minimumPercentage) &&
            (identical(other.jobLocation, jobLocation) ||
                other.jobLocation == jobLocation) &&
            (identical(other.websiteURL, websiteURL) ||
                other.websiteURL == websiteURL) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_id),
      const DeepCollectionEquality().hash(_managementId),
      const DeepCollectionEquality().hash(_branchId),
      const DeepCollectionEquality().hash(_branches),
      companyName,
      endDate,
      expCTC,
      file,
      jobDescription,
      jobProfile,
      regLink,
      startDate,
      minimumPercentage,
      jobLocation,
      websiteURL,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(
      this,
    );
  }
}

abstract class _Job extends Job {
  const factory _Job(
      {required final List<int> id,
      @JsonKey(name: "management_id") required final List<int> managementId,
      @JsonKey(name: "branch_id") required final List<int> branchId,
      required final List<String> branches,
      @JsonKey(name: "company_name") required final String companyName,
      @JsonKey(name: "end_date") required final String endDate,
      @JsonKey(name: "exp_ctc") required final String expCTC,
      required final String file,
      @JsonKey(name: "job_description") required final String jobDescription,
      @JsonKey(name: "job_profile") required final String jobProfile,
      @JsonKey(name: "reg_link") required final String regLink,
      @JsonKey(name: "start_date") required final String startDate,
      @JsonKey(name: "minimum_percentage")
      required final String minimumPercentage,
      @JsonKey(name: "job_location") required final String jobLocation,
      @JsonKey(name: "website_url") required final String websiteURL,
      required final Map<String, int> data}) = _$JobImpl;
  const _Job._() : super._();

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  List<int> get id;
  @override
  @JsonKey(name: "management_id")
  List<int> get managementId;
  @override
  @JsonKey(name: "branch_id")
  List<int> get branchId;
  @override
  List<String> get branches;
  @override
  @JsonKey(name: "company_name")
  String get companyName;
  @override
  @JsonKey(name: "end_date")
  String get endDate;
  @override
  @JsonKey(name: "exp_ctc")
  String get expCTC;
  @override
  String get file;
  @override
  @JsonKey(name: "job_description")
  String get jobDescription;
  @override
  @JsonKey(name: "job_profile")
  String get jobProfile;
  @override
  @JsonKey(name: "reg_link")
  String get regLink;
  @override
  @JsonKey(name: "start_date")
  String get startDate;
  @override
  @JsonKey(name: "minimum_percentage")
  String get minimumPercentage;
  @override
  @JsonKey(name: "job_location")
  String get jobLocation;
  @override
  @JsonKey(name: "website_url")
  String get websiteURL;
  @override
  Map<String, int> get data;
  @override
  @JsonKey(ignore: true)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
