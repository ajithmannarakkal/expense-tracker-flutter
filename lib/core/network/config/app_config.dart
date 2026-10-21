class ApiConfig {
  ApiConfig._();

  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://10.0.2.2:3000/api',
  );

  static const int connectionTimeout = 15000;
  static const int receiveTimeout = 15000;
  static const int sendTimeout = 15000;
}