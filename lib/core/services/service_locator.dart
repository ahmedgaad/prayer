import 'package:get_it/get_it.dart';
import 'package:prayer_timing/features/prayer_times/data/repositories/prayer_times_repository_impl.dart';
import 'package:prayer_timing/features/prayer_times/domain/repositories/prayer_times_repository.dart';
import 'package:prayer_timing/features/prayer_times/domain/use_cases/get_prayer_times_usecase.dart';
import 'package:prayer_timing/features/prayer_times/presentation/controller/cubit/cubit.dart';

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
    () => PrayerTimesRepositoryImpl(
      networkInfo: getIt(),
      prayerTimesDataSource: getIt(),
    ),
  );
}
