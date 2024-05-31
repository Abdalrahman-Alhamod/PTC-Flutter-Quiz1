import 'package:ptc_quiz1/question1/manual/company/availability.dart';

class Department {
  final String deptId;
  final String name;
  final String manager;
  final num budget;
  final int? year;
  final Availability? availability;
  final String meetingTime;

  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    required this.year,
    required this.availability,
    required this.meetingTime,
  });

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        deptId: json["deptId"],
        name: json["name"],
        manager: json["manager"],
        budget: json["budget"],
        year: json["year"],
        availability:
            json.containsKey('availability') && json["availability"] != null
                ? Availability.fromJson(json["availability"])
                : null,
        meetingTime: json["meeting_time"],
      );

  Map<String, dynamic> toJson() {
    return {
      "deptId": deptId,
      "name": name,
      "manager": manager,
      "budget": budget,
      "year": year,
      "availability": availability?.toJson(),
      "meeting_time": meetingTime
    };
  }

  static List<Department> fromJsonList(List<dynamic> json) {
    List<Department> departments =
        json.map((depatment) => Department.fromJson(depatment)).toList();
    return departments;
  }

  static List<Map<String, dynamic>> toJsonList(List<Department> departments) {
    return departments.map((departement) => departement.toJson()).toList();
  }
}
