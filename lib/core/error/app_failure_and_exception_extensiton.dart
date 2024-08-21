//
//* Object
import 'app_exception.dart';
import 'app_failure.dart';

extension CheckIsAppFailure on Object {
  AppFailure toAppFailure() {
    if (this is AppFailure) {
      return this as AppFailure;
    }
    return const UnknownFailure();
  }

  AppException toAppException() {
    if (this is AppException) {
      return this as AppException;
    }
    return const UnknownException();
  }
}

// * AppFailure
extension IsAppFailureNull on AppFailure? {
  bool isNull() {
    if (this == null) return true;
    return false;
  }

  bool isNotNull() {
    return !isNull();
  }
}

//* From AppException to AppFailure
extension FromAppExceptionToAppFailure on AppException {
  AppFailure handleExceptionToFailure() {
    // start - Common
    if (const UnknownException() == this) {
      return const UnknownFailure();
    } else if (const NoDataException() == this) {
      return NoDataFailure();
    } else if (const NotFoundException() == this) {
      return NotFoundFailure();
    }
    // End - Common
    // Start - remote
    else if (const NoInternetConnectionException() == this) {
      return NoInternetConnectionFailure();
    } else if (ServerException() == this) {
      return ServerFailure();
    } else if (const FirestoreException() == this) {
      return const FirestoreFailure();
    } else if (const FirebaseStorageException() == this) {
      return const FirebaseStorageFailure();
    } else if (const BadRequestException() == this) {
      return BadRequestFailure();
    } else if (const NotSuccessException() == this) {
      return NotSuccessFailure();
    } else if (const UnauthorizedException() == this) {
      return UnauthorizedFailure();
    }
    // End - remote
    // End - Local
    else if (CacheException() == this) {
      return const CacheFailure();
    }
    // End - Local

    // else if(xxxxxxx()== exception){
    //   return xxxxxxxxxxx();
    // }
    // else if(xxxxxxx()== exception){
    //   return xxxxxxxxxxx();
    // }
    // else if(xxxxxxx()== exception){
    //   return xxxxxxxxxxx();
    // }
    return const UnknownFailure();
  }
}
