import 'package:equatable/equatable.dart';

// todo handle all error data
class ErrorResponse extends Equatable {
  final String message;

  ErrorResponse(this.message);

  @override
  List<Object> get props => [message];
}
