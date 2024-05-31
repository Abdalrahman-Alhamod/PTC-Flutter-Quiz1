// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Department _$DepartmentFromJson(Map<String, dynamic> json) => Department(
      deptId: json['deptId'] as String,
      name: json['name'] as String,
      manager: json['manager'] as String,
      budget: (json['budget'] as num).toDouble(),
      year: (json['year'] as num?)?.toInt(),
      availability: json['availability'] == null
          ? null
          : Availability.fromJson(json['availability'] as Map<String, dynamic>),
      meetingTime: json['meeting_time'] as String,
    );

Map<String, dynamic> _$DepartmentToJson(Department instance) =>
    <String, dynamic>{
      'deptId': instance.deptId,
      'name': instance.name,
      'manager': instance.manager,
      'budget': instance.budget,
      'year': instance.year,
      'availability': instance.availability?.toJson(),
      'meeting_time': instance.meetingTime,
    };
