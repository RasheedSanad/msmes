import 'package:equatable/equatable.dart';

class AppException extends Equatable implements Exception {
  final String? message;

  const AppException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

//* Common
class UnknownException extends AppException {
  const UnknownException([message])
      : super(message); // AppExceptionConstants.UNKNOWN_ERROR
}

class NotSuccessException extends AppException {
  const NotSuccessException([message]) : super(message);
}

class NoDataException extends AppException {
  const NoDataException([message])
      : super(message); //  AppExceptionConstants.NO_DATA
}

class NotFoundException extends AppException {
  const NotFoundException([message])
      : super(message); //  AppExceptionConstants.NO_DATA
}

class ServerException extends AppException {
  ServerException([message]) : super(message);
}

class FirestoreException extends AppException {
  const FirestoreException([message]) : super(message);
}

class FirebaseStorageException extends AppException {
  const FirebaseStorageException([message]) : super(message);
}

class CacheException extends AppException {
  CacheException([message])
      : super(message); // AppExceptionConstants.UNKNOWN_ERROR
}

class NoInternetConnectionException extends AppException {
  const NoInternetConnectionException([message])
      : super(); // AppExceptionConstants.NO_INTERNET_CONNECTION
}

class UnauthorizedException extends AppException {
  const UnauthorizedException([message]) : super(message);
}

class BadRequestException extends AppException {
  const BadRequestException([message]) : super(message);
}
