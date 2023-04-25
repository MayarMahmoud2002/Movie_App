import 'dart:convert';

class ErrorMessageModel {
  final bool success;
  final int statusCode;
  final String statusMessage;

  ErrorMessageModel({
    required this.success,
    required this.statusCode,
    required this.statusMessage,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ErrorMessageModel &&
              runtimeType == other.runtimeType &&
              success == other.success &&
              statusCode == other.statusCode &&
              statusMessage == other.statusMessage;

  @override
  int get hashCode =>
      success.hashCode ^ statusCode.hashCode ^ statusMessage.hashCode;


  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageModel(
        success: json["success"],
        statusCode: json["status_code"],
        statusMessage: json["status_message"],
      );
}
