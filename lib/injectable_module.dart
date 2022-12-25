import 'dart:async';

import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:google_place/google_place.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_place/google_place.dart' as google_place;

@module
abstract class InjectableModule {
  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPref => SharedPreferences.getInstance();

  @lazySingleton
  Dio get dioInstance {
    final dio = Dio(
      BaseOptions(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          validateStatus: (statusCode) {
            if (statusCode != null) {
              if (200 <= statusCode && statusCode < 300) {
                return true;
              } else {
                return false;
              }
            } else {
              return false;
            }
          }),
    );

    dio.interceptors.add(
      LogInterceptor(
          responseBody: true,
          requestBody: true,
          logPrint: (obj) {
            debugPrint(obj.toString());
          }),
    );

    // dio.interceptors.add(
    //   InterceptorsWrapper(
    //     onRequest: (request, handler) async {
    //       Map<String, String> headers;
    //
    //       final failureOrUser = await getIt<AuthRepository>().getSignedInUser();
    //       final user = failureOrUser.getOrElse(() => null);
    //       if (user != null) {
    //         headers = {'Authorization': 'Bearer ${user.token}'};
    //         request.headers.addAll(headers);
    //       }
    //
    //       request.sendTimeout = 60000;
    //       request.connectTimeout = 60000;
    //       request.receiveTimeout = 60000;
    //
    //       return handler.next(request);
    //     },
    //   ),
    // );
    dio.interceptors.add(CurlLoggerDioInterceptor());
    return dio;
  }

  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  Location get location => Location();

  @lazySingleton
  google_place.GooglePlace get googlePlace =>
      google_place.GooglePlace('AIzaSyCrq81n7DWxfPL_-Dmh8afFw6W0zl6sNm0');
}
