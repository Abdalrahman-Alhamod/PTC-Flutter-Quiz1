import 'package:json_annotation/json_annotation.dart';
part 'availability.g.dart';
@JsonSerializable()
class Availability {
  final bool online;
  final bool inStore;

  Availability({
    required this.online,
    required this.inStore,
  });

  factory Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);
  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);
}