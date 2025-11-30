
  class AppException implements Exception{
    final _message;
    final _prefix;
    AppException(
      [ this._message, this._prefix]);
    String toString(){
      return '$_prefix:$_message';
    }
  }

  class FetchDataLoading  extends AppException{
    FetchDataLoading
    ([String? _message]):super(_message, "Error During Communication");
  }
  