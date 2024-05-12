import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.g.dart';
part 'student.freezed.dart';

@freezed
class Student with _$Student {
  const Student._();
  const factory Student({
    required String userId,
    required String firstName,
    required String lastName,
    required String rollNumber,
    required String sgpa,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
