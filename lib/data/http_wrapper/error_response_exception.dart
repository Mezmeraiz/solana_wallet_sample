class ErrorResponseException implements Exception {
  final String message;
  final int statusCode;

  const ErrorResponseException(
    this.message,
    this.statusCode,
  );
}
