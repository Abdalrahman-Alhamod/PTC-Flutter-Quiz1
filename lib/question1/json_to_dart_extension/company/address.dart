class Address {
  String? street;
  String? city;
  String? state;
  String? postalCode;

  Address({this.street, this.city, this.state, this.postalCode});

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json['street'] as String?,
        city: json['city'] as String?,
        state: json['state'] as String?,
        postalCode: json['postalCode'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'street': street,
        'city': city,
        'state': state,
        'postalCode': postalCode,
      };
}
