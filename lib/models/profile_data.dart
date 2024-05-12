import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data.g.dart';
part 'profile_data.freezed.dart';

@freezed
class ProfileData with _$ProfileData {
  const ProfileData._();
  const factory ProfileData({
   @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    required String email,
   @JsonKey(name: "company_name")  required List<String> companyName,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}
