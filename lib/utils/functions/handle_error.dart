import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../export.dart';

enum errorType {
  internet,
  http,
  format,
  unAuthorized,
  notFound,
  serverError,
  timeout,
  others
}

class Failure {
  const Failure({this.message, this.type});

  final String? message;
  final errorType? type;
}

Failure handleError(dynamic response) {
  Log.error(response.runtimeType);
  Failure _failure;
  if (response.runtimeType == Response) {
    final int statusCode = response.statusCode as int;
    if (statusCode == 401) {
      _failure = const Failure(
          message: 'Not authorized to perform action',
          type: errorType.unAuthorized);
    } else if (statusCode == 400) {
      _failure = const Failure(
        message: 'Oh! Bad request',
        type: errorType.notFound,
      );
    } else if (statusCode == 402) {
      _failure = const Failure(
        message: 'Payment required',
        type: errorType.others,
      );
    } else if (statusCode == 403) {
      _failure = const Failure(
        message: 'Access forbidden',
        type: errorType.others,
      );
    } else if (statusCode == 404) {
      _failure = const Failure(
        message: 'User not found',
        type: errorType.notFound,
      );
    } else if (statusCode == 405) {
      _failure = const Failure(
        message: 'Method not allowed',
        type: errorType.others,
      );
    } else if (statusCode == 406) {
      _failure = const Failure(
        message: 'Incorrect email or password',
        type: errorType.others,
      );
    } else if (statusCode == 409) {
      _failure = const Failure(
        message: 'Conflict! can not connect to the server',
        type: errorType.others,
      );
    } else if (statusCode == 410) {
      _failure = const Failure(
        message: "Data doesn't exist anymore",
        type: errorType.others,
      );
    } else if (statusCode == 415) {
      _failure = const Failure(
        message: 'Unsupported media type',
        type: errorType.others,
      );
    } else if (statusCode == 426) {
      _failure = const Failure(
        message: 'Upgrade required',
        type: errorType.others,
      );
    } else if (statusCode == 500) {
      _failure = const Failure(
        message: 'Oops! server got an issue',
        type: errorType.serverError,
      );
    } else if (statusCode == 501) {
      _failure = const Failure(
        message: 'Oops! Error 501 not implemented',
        type: errorType.serverError,
      );
    } else if (statusCode == 502) {
      _failure = const Failure(
        message: 'Oops! Bad Gateway',
        type: errorType.serverError,
      );
    } else if (statusCode == 503) {
      _failure = const Failure(
        message: 'Oops! server is unavailable',
        type: errorType.serverError,
      );
    } else if (statusCode == 521) {
      _failure = const Failure(
        message: 'Server is currently down',
        type: errorType.serverError,
      );
    } else if (statusCode == 525) {
      _failure = const Failure(
        message: 'SSL handshake failed',
        type: errorType.serverError,
      );
    } else {
      _failure = Failure(
        message: json.decode(response.body as String)['msg'] as String,
        type: errorType.unAuthorized,
      );
    }
  } else {
    final Type type = response.runtimeType;
    if (type == Failure) {
      _failure = response as Failure;
    } else if (type == SocketException) {
      _failure = const Failure(
        message: 'Check your internet connection',
        type: errorType.internet,
      );
    } else if (type == FormatException) {
      _failure = const Failure(
        message: 'Unable to process data',
        type: errorType.format,
      );
    } else if (type == HttpException) {
      _failure = const Failure(
        message: 'Got http error',
        type: errorType.http,
      );
    } else if (type == TimeoutException) {
      _failure = const Failure(
        message: 'Request time out',
        type: errorType.timeout,
      );
    } else if (type == Exception) {
      _failure = const Failure(
        message: 'Wrong Very wrong',
        type: errorType.timeout,
      );
    } else {
      _failure = const Failure(
        message: 'Something went wrong',
        type: errorType.others,
      );
    }
  }
  return _failure;
}
