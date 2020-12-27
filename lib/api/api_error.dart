import 'package:flutter/foundation.dart';

class ApiError {
  final int statusCode;
  final String message;

  ApiError({
    this.statusCode,
    @required this.message,
  });
}