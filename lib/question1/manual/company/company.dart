import 'package:intl/intl.dart';
import 'package:ptc_quiz1/question1/manual/helpers/date_time_helper.dart';
import 'package:ptc_quiz1/question1/manual/company/address.dart';
import 'package:ptc_quiz1/question1/manual/company/department.dart';

class Company {
  final bool isActive;
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

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        isActive: _getIsActiveFromJson(json),
        name: json["name"] as String,
        address:
            json["address"] != null ? Address.fromJson(json["address"]) : null,
        established: Datetimehelper.convertToUTC(
          DateTime.parse(
            json["established"].toString(),
          ),
        ),
        departments: Department.fromJsonList(
          json["departments"],
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'is_active': isActive ? 1 : 0,
      'name': name,
      'address': address?.toJson(),
      'established': established.toUtc(),
      'departments': Department.toJsonList(departments),
    };
  }

  static bool _getIsActiveFromJson(Map<String, dynamic> json) {
    if (json.containsKey("is_active")) {
      return json["is_active"] == 1;
    } else if (json.containsKey("isActive")) {
      return json["isActive"] == 1;
    } else {
      return false;
    }
  }

  String displayDate() {
    return DateFormat('d-MMM, yyyy').format(established);
  }
}
