import 'dart:convert';

FactModel factModelFromJson(String str) => FactModel.fromJson(json.decode(str));

String factModelToJson(FactModel data) => json.encode(data.toJson());

class FactModel {
  FactModel({required this.text});

  final String text;

  factory FactModel.fromJson(Map<String, dynamic> json) =>
      FactModel(text: json["text"]);

  Map<String, dynamic> toJson() => {"text": text};
}
