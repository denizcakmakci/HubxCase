import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:hubx_case_study/env/env.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class DioManager {
  DioManager._();

  static final PrettyDioLogger _logInterceptor = PrettyDioLogger(
    requestBody: true,
    responseHeader: true,
    maxWidth: 150,
  );

  static Dio getDio() {
    final dio = Dio();
    final baseUrl = Env.baseUrl;

    final options = BaseOptions()
      ..baseUrl = baseUrl
      ..connectTimeout = const Duration(seconds: 15)
      ..receiveTimeout = const Duration(seconds: 15)
      ..responseType = ResponseType.json
      ..contentType = Headers.jsonContentType;

    dio.options = options;

    if (foundation.kDebugMode) {
      dio.interceptors.add(_logInterceptor);
    }

    //  dio.interceptors.add(TokenRefreshInterceptor(dio));

    return dio;
  }

  static Dio getDioForDownload({Map<String, dynamic>? headers}) {
    final dio = Dio();

    final options = BaseOptions()..headers = headers;
    dio.options = options;

    if (foundation.kDebugMode) {
      dio.interceptors.add(_logInterceptor);
    }

    final cacheOptions = CacheOptions(
      store: MemCacheStore(),
      maxStale: const Duration(hours: 2),
      allowPostMethod: true,
    );

    dio.interceptors.add(DioCacheInterceptor(options: cacheOptions));

    return dio;
  }
}
