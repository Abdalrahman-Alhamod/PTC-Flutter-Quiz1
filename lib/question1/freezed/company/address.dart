import 'package:freezed_annotation/freezed_annotation.dart';
part 'address.freezed.dart';
part 'address.g.dart';
@freezed
class Address with _$Address {
  const factory Address({
    required String street,
    required String city,
    required String state,
    @JsonKey(name: 'postalCode') required String postalCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}