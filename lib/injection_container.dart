import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initializeInjector() {
  // Cubit

  // Usecase

  // Repository

  // WebServices
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = 20 * 100
    ..options.receiveTimeout = 20 * 100;

  dio.interceptors.add(LogInterceptor(
    request: true,
    error: true,
    requestBody: true,
    requestHeader: false,
    responseBody: true,
    responseHeader: false,
  ));

  return dio;
}
