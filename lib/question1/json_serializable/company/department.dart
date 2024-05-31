
import 'package:json_annotation/json_annotation.dart';

import 'availability.dart';
part 'department.g.dart';
@JsonSerializable(explicitToJson: true)
class Department {
  final String deptId;
  final String name;
  final String manager;
  final double budget;
  final int? year;
  final Availability? availability;
  @JsonKey(name: "meeting_time")
  final String meetingTime;

  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    this.year,
    this.availability,
    required this.meetingTime,
  });

  factory Department.fromJson(Map<String, dynamic> json) => _$DepartmentFromJson(json);
  Map<String, dynamic> toJson() => _$DepartmentToJson(this);
}
