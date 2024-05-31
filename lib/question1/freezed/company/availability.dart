import 'package:freezed_annotation/freezed_annotation.dart';
part 'availability.freezed.dart';
part 'availability.g.dart';
@freezed
class Availability with _$Availability {
  const factory Availability({
    required bool online,
    @JsonKey(name: 'inStore') required bool inStore,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);
}