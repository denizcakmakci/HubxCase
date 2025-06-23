// ignore_for_file: inference_failure_on_function_invocation

import 'dart:convert';

import 'package:dio/dio.dart';

class NetworkManager {
  NetworkManager({required this.dio});
  final Dio dio;

  Future<T> get<T>({
    required String path,
    required T Function(dynamic json) fromJson,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );
      final raw = response.data;

      dynamic jsonData;

      if (raw is String) {
        jsonData = jsonDecode(raw);
      } else {
        jsonData = raw;
      }

      return fromJson(jsonData);
    } on DioException catch (e) {
      throw Exception(e);
    }
  }

  Future<T> post<T>({
    required String path,
    dynamic body,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.post<T>(
        path,
        data: body,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );

      return response.data as T;
    } on DioException catch (e) {
      throw Exception(e);
    }
  }

  Future<T> put<T>({
    required String path,
    dynamic body,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.put<T>(
        path,
        data: body,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );

      return response.data as T;
    } on DioException catch (e) {
      throw Exception(e);
    }
  }

  Future<T> delete<T>({
    required String path,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.delete<T>(
        path,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );

      return response.data as T;
    } on DioException catch (e) {
      throw Exception(e);
    }
  }
}
