import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:prayer_timing/core/helpers/bloc_observer.dart';
import 'package:prayer_timing/core/network/netwok_info.dart';
import 'package:prayer_timing/core/services/service_locator.dart';
import 'package:prayer_timing/features/prayer_times/data/data_sources/remote_datasource.dart';
import 'package:prayer_timing/features/prayer_times/data/repositories/prayer_times_repository_impl.dart';
import 'package:prayer_timing/features/prayer_times/domain/repositories/prayer_times_repository.dart';
import 'package:prayer_timing/features/prayer_times/domain/use_cases/get_prayer_times_usecase.dart';
import 'package:prayer_timing/features/prayer_times/presentation/controller/cubit/cubit.dart';
import 'core/utils/routes_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeInjector();
  Bloc.observer = MyBlocObserver();
  NetworkInfo networkInfo = NetworkInfoImpl(InternetConnectionChecker());
  PrayerTimesRemoteDataSource prayerTimesDataSource = PrayerTimesRemoteDataSourceImpl();
  PrayerTimesRepository prayerTimesRepository = PrayerTimesRepositoryImpl(
      networkInfo: networkInfo, prayerTimesDataSource: prayerTimesDataSource);
  GetPrayerTimesUsecase(prayerTimesRepository).execute(
    latitude: 51.508515,
    longitude: -0.1254872,
    year: 2023,
    month: 3,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
