import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:prayer_timing/core/errors/failures.dart';
import 'package:prayer_timing/core/helpers/location_helper.dart';
import 'package:prayer_timing/core/utils/strings_manager.dart';
import 'package:prayer_timing/features/prayer_times/domain/entities/prayer_times.dart';
import 'package:prayer_timing/features/prayer_times/domain/use_cases/get_prayer_times_usecase.dart';
import 'package:prayer_timing/features/prayer_times/presentation/controller/cubit/states.dart';

class AppCubit extends Cubit<AppStates> {
  final GetPrayerTimesUsecase getPrayerTimesUsecase;
  // PrayerTimes? prayerTimes;
  Position? position;

  AppCubit({
    required this.getPrayerTimesUsecase,
  }) : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  Future<void> getCurrentLocation() async {
    // ignore: todo
    //TODO: make refresh state if an error appears
    position = await LocationHelper.determinePosition();
  }

  Future<void> getPrayerTimes({
    required double latitude,
    required double longitude,
    required int year,
    required int month,
  }) async {
    emit(GetPrayerTimesLoadingState());

    final failureOrGetPrayerTimes = await getPrayerTimesUsecase.execute(
      latitude: latitude,
      longitude: longitude,
      year: year,
      month: month,
    );
    failureOrGetPrayerTimes.fold((failure) {
      emit(GetPrayerTimesErrorState(message: _mapFailureToMessage(failure)));
    }, (times) {
      emit(GetPrayerTimesSuccessfulState(prayerTimes: times));
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case OfflineFailure:
        return OFFLINE_FAILURE_MESSAGE;
      default:
        return "Unexpected Error, Please try again later";
    }
  }
}
