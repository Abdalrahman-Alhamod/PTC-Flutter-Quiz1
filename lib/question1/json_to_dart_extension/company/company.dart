import 'package:ptc_quiz1/question1/json_to_dart_extension/helpers/date_time_helper.dart';

import 'address.dart';
import 'department.dart';

class Company with DateTimeHelper {
  int? isActive;
  String? name;
  Address? address;
  String? established;
  List<Department>? departments;

  Company({
    this.isActive,
    this.name,
    this.address,
    this.established,
    this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        isActive: json['is_active'] as int?,
        name: json['name'] as String?,
        address: json['address'] == null
            ? null
            : Address.fromJson(json['address'] as Map<String, dynamic>),
        established: json['established'] as String?,
        departments: (json['departments'] as List<dynamic>?)
            ?.map((e) => Department.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'is_active': isActive,
        'name': name,
        'address': address?.toJson(),
        'established': established,
        'departments': departments?.map((e) => e.toJson()).toList(),
      };

  formattedDate() {
    return formatDate(DateTime.parse(established!));
  }
}
