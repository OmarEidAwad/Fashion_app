import 'package:dio/dio.dart';
import 'package:fashion/core/helpers/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers = {
          "x-rapidapi-key": Constants.ApiKey,
          "x-rapidapi-host": " apidojo-hm-hennes-mauritz-v1.p.rapidapi.com",
          "Content-Type": "application/json",
        };
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {'Authorization': 'Bearer $token'};
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
