import 'package:json_annotation/json_annotation.dart';
import 'package:ptc_quiz1/question1/json_to_dart_extension/helpers/date_time_helper.dart';

import 'address.dart';
import 'department.dart';
part 'company.g.dart';

@JsonSerializable(explicitToJson: true)
class Company with DateTimeHelper {
  @JsonKey(name: 'is_active', fromJson: _boolFromInt, toJson: _intFromBool)
  final bool? isActive;
  final String name;
  final Address? address;
  final DateTime established;
  final List<Department> departments;

  Company({
    required this.isActive,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  static bool? _boolFromInt(int? value) => value == 1;

  static int? _intFromBool(bool? value) {
    if (value != null) {
      return value ? 1 : 0;
    }
    return null;
  }

  formattedDate() {
    return formatDate(established);
  }
}
