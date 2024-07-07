import 'dart:convert';


class UserResponse {
  String dp;
  String firstName;
  String lastName;
  String email;
  IdDocument idDocument;
  String country;
  String address;
  Location location;
  String password;

  UserResponse({
    required this.dp,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.idDocument,
    required this.country,
    required this.address,
    required this.location,
    required this.password,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
    dp: json["dp"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    email: json["email"],
    idDocument: IdDocument.fromJson(json["idDocument"]),
    country: json["country"],
    address: json["address"],
    location: Location.fromJson(json["location"]),
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "dp": dp,
    "firstName": firstName,
    "lastName": lastName,
    "email": email,
    "idDocument": idDocument.toJson(),
    "country": country,
    "address": address,
    "location": location.toJson(),
    "password": password,
  };
}

class IdDocument {
  String doc;
  String number;

  IdDocument({
    required this.doc,
    required this.number,
  });

  factory IdDocument.fromJson(Map<String, dynamic> json) => IdDocument(
    doc: json["doc"],
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "doc": doc,
    "number": number,
  };
}

class Location {
  double lat;
  double lng;

  Location({
    required this.lat,
    required this.lng,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    lat: json["lat"]?.toDouble(),
    lng: json["lng"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}
