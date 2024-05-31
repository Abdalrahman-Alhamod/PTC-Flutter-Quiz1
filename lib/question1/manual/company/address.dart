class Address {
  final String street;
  final String city;
  final String state;
  final String postalCode;

  Address({
    required this.street,
    required this.city,
    required this.state,
    required this.postalCode,
  });

  factory Address.fromJson(Map<String, dynamic> jsonData) {
    return Address(
      street: jsonData["street"],
      city: jsonData["city"],
      state: jsonData["state"],
      postalCode: jsonData["postalCode"],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "street": street,
      "city": city,
      "state": state,
      "postalCode": postalCode
    };
  }
}
