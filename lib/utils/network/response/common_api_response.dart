import 'dart:convert';

class CommonApiResponse {
  String title;
  String message;
  String? error;

  Data? data;

  CommonApiResponse({
    required this.title,
    required this.message,
    required this.error,
    required this.data,

  });

  factory CommonApiResponse.fromJson(Map<String, dynamic> json) => CommonApiResponse(
        title: json["title"],
        message: json["message"],
        error: json["error"],
        data: Data.fromJson(json["data"]),

      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "message": message,
        "error": error,
        "data": data?.toJson(),
      };
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();

  Map<String, dynamic> toJson() => {};
}
