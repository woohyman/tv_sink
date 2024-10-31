import 'package:dio/dio.dart';

abstract class BaseDio {
  var _dio = Dio();

  get dio {
    return _dio;
  }

  get newDio {
    _dio.close();
    _dio = Dio();
    return _dio;
  }
}
