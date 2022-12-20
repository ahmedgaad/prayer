import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:prayer_timing/features/prayer_times/data/data_sources/remote/web_services.dart';
import 'package:prayer_timing/features/prayer_times/data/repositories/prayer_times_repository_impl.dart';
import 'package:prayer_timing/features/prayer_times/domain/repositories/prayer_times_repository.dart';
import 'package:prayer_timing/features/prayer_times/domain/use_cases/get_prayer_times_usecase.dart';
import 'package:prayer_timing/features/prayer_times/presentation/screens/home/cubit/cubit.dart';

GetIt getIt = GetIt.instance;

void initializeInjector() {
  // Cubit
  getIt.registerLazySingleton(
    () => AppCubit(
      getPrayerTimesUsecase: getIt(),
    ),
  );
  // Usecase
  getIt.registerLazySingleton(() => GetPrayerTimesUsecase(getIt()));
  // Repository
  getIt.registerLazySingleton<PrayerTimesRepository>(
      () => PrayerTimesRepositoryImpl(getIt()));

  // WebServices
  getIt.registerLazySingleton<WebServices>(
      () => WebServices(createAndSetupDio()));
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
