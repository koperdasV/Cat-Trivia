import 'dart:convert';

FactModel factModelFromJson(String str) => FactModel.fromJson(json.decode(str));

String factModelToJson(FactModel data) => json.encode(data.toJson());

class FactModel {
  FactModel({required this.text, required this.createdAt});

  final String text;
  final String createdAt;

  factory FactModel.fromJson(Map<String, dynamic> json) =>
      FactModel(text: json["text"], createdAt: json["createdAt"]);

  Map<String, dynamic> toJson() => {"text": text,"createdAt": createdAt};
}
