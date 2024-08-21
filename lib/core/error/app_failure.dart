import 'package:equatable/equatable.dart';

abstract class AppFailure extends Equatable {
  final String? message;

  const AppFailure([this.message]);

  @override
  List<Object?> get props => [message];
}

class UnknownFailure extends AppFailure {
  const UnknownFailure([message]) : super(message);
}

class NotSuccessFailure extends AppFailure {
  NotSuccessFailure([message])
      : super(message); // C.NOT_SUCCESSFUL_PROCESS.tr()
}

class NoDataFailure extends AppFailure {
  NoDataFailure([message]) : super(message);
}

class NotFoundFailure extends AppFailure {
  NotFoundFailure([message]) : super(message);
}

class ServerFailure extends AppFailure {
  ServerFailure([message]) : super(message);
}

class FirestoreFailure extends AppFailure {
  const FirestoreFailure([message]) : super(message);
}

class FirebaseStorageFailure extends AppFailure {
  const FirebaseStorageFailure([message]) : super(message);
}

class CacheFailure extends AppFailure {
  const CacheFailure([message]) : super(message);
}

class NoInternetConnectionFailure extends AppFailure {
  NoInternetConnectionFailure([message])
      : super(message); //  C.NO_INTERNET_CONNECTION.tr()
}

class UnauthorizedFailure extends AppFailure {
  UnauthorizedFailure([message])
      : super(message); //  C.CREATE_A_ACCOUNT_OR_LOGIN_FIRST.tr()
}

class BadRequestFailure extends AppFailure {
  BadRequestFailure([message]) : super(message);
}
