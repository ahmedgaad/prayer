import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayer_timing/features/prayer_times/domain/use_cases/get_prayer_times_usecase.dart';
import 'package:prayer_timing/features/prayer_times/presentation/screens/home/cubit/states.dart';

import '../../../../data/models/prayer_times_model.dart';

class AppCubit extends Cubit<AppStates> {
  final GetPrayerTimesUsecase getPrayerTimesUsecase;

  AppCubit({
    required this.getPrayerTimesUsecase,
  }) : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  void emitGetPrayerTimes(
    double latitude,
    double longitude,
    int method,
    String day,
    Month month,
    String year,
  ) {
    emit(LoadingGetPrayerTimesState());
    getPrayerTimesUsecase(
      latitude,
      longitude,
      method,
      day,
      month,
      year,
    ).then((prayerTimes) {
      emit(SuccessfulGetPrayerTimesState(prayerTimes));
    });
  }

  DateTime today = DateTime.now();
}
