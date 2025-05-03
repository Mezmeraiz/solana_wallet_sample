import 'dart:convert';
import 'dart:io';

import 'package:solana_wallet_sample/data/http_wrapper/error_response_exception.dart';
import 'package:solana_wallet_sample/data/http_wrapper/invalid_response_exception.dart';
import 'package:solana_wallet_sample/data/http_wrapper/request_failed_exception.dart';
import 'package:http/http.dart' as http;

abstract interface class HttpWrapper {
  Future<dynamic> get(
    String url, {
    Map<String, String>? headers,
    Map<String, Object?>? queryParams,
  });

  Future<dynamic> post(
    String url, {
    Map<String, String>? headers,
    Object? body,
  });

  Future<dynamic> put(
    String url, {
    Map<String, String>? headers,
    Object? body,
  });

  Future<dynamic> delete(
    String url, {
    Map<String, String>? headers,
  });
}

const defaultHeaders = {
  HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
};

class HttpWrapperImpl implements HttpWrapper {
  @override
  Future<dynamic> get(
    String url, {
    Map<String, String>? headers = defaultHeaders,
    Map<String, Object?>? queryParams,
  }) async {
    final uri = Uri.parse(url).replace(queryParameters: queryParams);

    late final http.Response response;
    try {
      response = await http.get(
        uri,
        headers: headers,
      );
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        RequestFailedException('GET request failed: $error'),
        stackTrace,
      );
    }

    try {
      return _handleResponse(response);
    } on ErrorResponseException {
      rethrow;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        InvalidResponseException('GET request failed: $error'),
        stackTrace,
      );
    }
  }

  @override
  Future<dynamic> post(
    String url, {
    Map<String, String>? headers = defaultHeaders,
    Object? body,
  }) async {
    final uri = Uri.parse(url);

    http.Response response;
    try {
      response = await http.post(
        uri,
        headers: headers,
        body: body,
      );
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        RequestFailedException('POST request failed: $error'),
        stackTrace,
      );
    }

    try {
      return _handleResponse(response);
    } on ErrorResponseException {
      rethrow;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        InvalidResponseException('POST request failed: $error'),
        stackTrace,
      );
    }
  }

  @override
  Future<dynamic> put(
    String url, {
    Map<String, String>? headers = defaultHeaders,
    Object? body,
  }) async {
    final uri = Uri.parse(url);

    http.Response response;
    try {
      response = await http.put(
        uri,
        headers: headers,
        body: body,
      );
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        RequestFailedException('PUT request failed: $error'),
        stackTrace,
      );
    }

    try {
      return _handleResponse(response);
    } on ErrorResponseException {
      rethrow;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        InvalidResponseException('PUT request failed: $error'),
        stackTrace,
      );
    }
  }

  @override
  Future<dynamic> delete(
    String url, {
    Map<String, String>? headers = defaultHeaders,
  }) async {
    final uri = Uri.parse(url);

    http.Response response;
    try {
      response = await http.delete(
        uri,
        headers: headers,
      );
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        RequestFailedException('DELETE request failed: $error'),
        stackTrace,
      );
    }

    try {
      return _handleResponse(response);
    } on ErrorResponseException {
      rethrow;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        InvalidResponseException('DELETE request failed: $error'),
        stackTrace,
      );
    }
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw ErrorResponseException('Request failed with body: ${response.body}', response.statusCode);
    }

    if (response.body.isEmpty) {
      return null;
    }

    return jsonDecode(response.body);
  }
}
