class ApiEndpoints {
  ApiEndpoints._();

  // Transactions
  static const String transactions = '/transactions';
  static const String createTransaction = '/transactions';

  // Network timeouts (milliseconds)
  static const int connectionTimeout = 15000;
  static const int receiveTimeout = 15000;
  static const int sendTimeout = 15000;
}