import 'package:prayer_timing/features/prayer_times/data/models/prayer_times_model.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {}

class LoadingGetPrayerTimesState extends AppStates {}

class SuccessfulGetPrayerTimesState extends AppStates {
  final PrayerTimesModel prayerTimes;

  SuccessfulGetPrayerTimesState(this.prayerTimes);
}

class ErrorGetPrayerTimesState extends AppStates {}
