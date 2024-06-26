// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_on_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobOnDashboard _$JobOnDashboardFromJson(Map<String, dynamic> json) {
  return _JobOnDashboard.fromJson(json);
}

/// @nodoc
mixin _$JobOnDashboard {
  String get companyName => throw _privateConstructorUsedError;
  String get driveDate => throw _privateConstructorUsedError;
  int get registered => throw _privateConstructorUsedError;
  int get pending => throw _privateConstructorUsedError;
  List<int> get id => throw _privateConstructorUsedError;
  String get postedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobOnDashboardCopyWith<JobOnDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobOnDashboardCopyWith<$Res> {
  factory $JobOnDashboardCopyWith(
          JobOnDashboard value, $Res Function(JobOnDashboard) then) =
      _$JobOnDashboardCopyWithImpl<$Res, JobOnDashboard>;
  @useResult
  $Res call(
      {String companyName,
      String driveDate,
      int registered,
      int pending,
      List<int> id,
      String postedBy});
}

/// @nodoc
class _$JobOnDashboardCopyWithImpl<$Res, $Val extends JobOnDashboard>
    implements $JobOnDashboardCopyWith<$Res> {
  _$JobOnDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? driveDate = null,
    Object? registered = null,
    Object? pending = null,
    Object? id = null,
    Object? postedBy = null,
  }) {
    return _then(_value.copyWith(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      driveDate: null == driveDate
          ? _value.driveDate
          : driveDate // ignore: cast_nullable_to_non_nullable
              as String,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as int,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as List<int>,
      postedBy: null == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobOnDashboardImplCopyWith<$Res>
    implements $JobOnDashboardCopyWith<$Res> {
  factory _$$JobOnDashboardImplCopyWith(_$JobOnDashboardImpl value,
          $Res Function(_$JobOnDashboardImpl) then) =
      __$$JobOnDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String companyName,
      String driveDate,
      int registered,
      int pending,
      List<int> id,
      String postedBy});
}

/// @nodoc
class __$$JobOnDashboardImplCopyWithImpl<$Res>
    extends _$JobOnDashboardCopyWithImpl<$Res, _$JobOnDashboardImpl>
    implements _$$JobOnDashboardImplCopyWith<$Res> {
  __$$JobOnDashboardImplCopyWithImpl(
      _$JobOnDashboardImpl _value, $Res Function(_$JobOnDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? driveDate = null,
    Object? registered = null,
    Object? pending = null,
    Object? id = null,
    Object? postedBy = null,
  }) {
    return _then(_$JobOnDashboardImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      driveDate: null == driveDate
          ? _value.driveDate
          : driveDate // ignore: cast_nullable_to_non_nullable
              as String,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as int,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value._id
          : id // ignore: cast_nullable_to_non_nullable
              as List<int>,
      postedBy: null == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobOnDashboardImpl extends _JobOnDashboard {
  const _$JobOnDashboardImpl(
      {required this.companyName,
      required this.driveDate,
      required this.registered,
      required this.pending,
      required final List<int> id,
      required this.postedBy})
      : _id = id,
        super._();

  factory _$JobOnDashboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobOnDashboardImplFromJson(json);

  @override
  final String companyName;
  @override
  final String driveDate;
  @override
  final int registered;
  @override
  final int pending;
  final List<int> _id;
  @override
  List<int> get id {
    if (_id is EqualUnmodifiableListView) return _id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_id);
  }

  @override
  final String postedBy;

  @override
  String toString() {
    return 'JobOnDashboard(companyName: $companyName, driveDate: $driveDate, registered: $registered, pending: $pending, id: $id, postedBy: $postedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobOnDashboardImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.driveDate, driveDate) ||
                other.driveDate == driveDate) &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            const DeepCollectionEquality().equals(other._id, _id) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, companyName, driveDate,
      registered, pending, const DeepCollectionEquality().hash(_id), postedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobOnDashboardImplCopyWith<_$JobOnDashboardImpl> get copyWith =>
      __$$JobOnDashboardImplCopyWithImpl<_$JobOnDashboardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobOnDashboardImplToJson(
      this,
    );
  }
}

abstract class _JobOnDashboard extends JobOnDashboard {
  const factory _JobOnDashboard(
      {required final String companyName,
      required final String driveDate,
      required final int registered,
      required final int pending,
      required final List<int> id,
      required final String postedBy}) = _$JobOnDashboardImpl;
  const _JobOnDashboard._() : super._();

  factory _JobOnDashboard.fromJson(Map<String, dynamic> json) =
      _$JobOnDashboardImpl.fromJson;

  @override
  String get companyName;
  @override
  String get driveDate;
  @override
  int get registered;
  @override
  int get pending;
  @override
  List<int> get id;
  @override
  String get postedBy;
  @override
  @JsonKey(ignore: true)
  _$$JobOnDashboardImplCopyWith<_$JobOnDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
