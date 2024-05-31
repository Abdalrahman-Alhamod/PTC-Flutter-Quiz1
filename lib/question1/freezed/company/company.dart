
import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'department.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: 'is_active') int? isActive,
    required String name,
    required Address? address,
    required DateTime established,
    required List<Department> departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}