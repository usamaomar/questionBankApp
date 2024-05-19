import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start apis Group Code

class ApisGroup {
  static String getBaseUrl() => 'https://chainlms.completechaintech.com/api';
  static Map<String, String> headers = {
    'Accept': 'application/json',
  };
  static RegisterApiCall registerApiCall = RegisterApiCall();
  static LoginApiCall loginApiCall = LoginApiCall();
  static GetCountryApiCall getCountryApiCall = GetCountryApiCall();
}

class RegisterApiCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? mobileNumberCountry = '',
    String? mobileNumber = '',
    String? password = '',
    String? passwordConfirmation = '',
    String? fcm = '',
    String? appVersion = '',
    String? appOs = '',
    String? appLang = '',
  }) async {
    final baseUrl = ApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "mobileNumber_country": "$mobileNumberCountry",
  "mobileNumber": "$mobileNumber",
  "password": "$password",
  "password_confirmation": "$passwordConfirmation",
  "fcm": "$fcm",
  "app_version": "$appVersion",
  "app_os": "$appOs",
  "app_lang": "$appLang"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterApi',
      apiUrl: '$baseUrl/register',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginApiCall {
  Future<ApiCallResponse> call({
    String? mobileNumberCountry = '',
    String? mobileNumber = '',
    String? password = '',
    String? fcm = '',
    String? appVersion = '',
    String? appOs = '',
    String? appLang = '',
  }) async {
    final baseUrl = ApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "mobileNumber_country": "$mobileNumberCountry",
  "mobileNumber": "$mobileNumber",
  "password": "$password",
  "fcm": "$fcm",
  "app_version": "$appVersion",
  "app_os": "$appOs",
  "app_lang": "$appLang"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginApi',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCountryApiCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApisGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetCountryApi',
      apiUrl: '$baseUrl/country',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apis Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
