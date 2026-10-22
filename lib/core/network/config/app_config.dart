import 'package:flutter/foundation.dart';

class ApiConfig {
  ApiConfig._();

  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://192.168.29.222:3000/api',
  );

  static const int connectionTimeout = 15000;
  static const int receiveTimeout = 15000;
  static const int sendTimeout = 15000;
}