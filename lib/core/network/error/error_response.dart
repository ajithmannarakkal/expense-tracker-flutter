class ErrorResponse {
  const ErrorResponse({
    required this.description,
    this.statusCode,
    this.remarks,
  });

  final String description;
  final String? statusCode;
  final String? remarks;
}