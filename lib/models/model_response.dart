
enum Status {
  success,
  error,
}
class ModelResponse{
  final Status status;
  final String? message;
  final dynamic? data;

  ModelResponse({required this.status, this.message, this.data});
}
