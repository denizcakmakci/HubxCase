import 'dart:io';

import 'package:dio/dio.dart';

class NetworkErrorUtil {
  static String handleHomeError(DioException error) {
    switch (error.response?.statusCode) {
      case HttpStatus.forbidden:
        return 'forbidden';
      case HttpStatus.unprocessableEntity:
        return 'unprocessableEntity';
      case HttpStatus.tooManyRequests:
        return 'Çok fazla istek gönderdiniz, lütfen daha sonra tekrar deneyin.';
      case HttpStatus.conflict:
        return 'conflict';
      default:
        return 'Bir hata oluştu';
    }
  }
}
