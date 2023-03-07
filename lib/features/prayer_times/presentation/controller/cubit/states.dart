import 'package:prayer_timing/features/prayer_times/data/models/prayer_times_model.dart';
import 'package:prayer_timing/features/prayer_times/domain/entities/prayer_times.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {}

class GetPrayerTimesLoadingState extends AppStates {}

class GetPrayerTimesSuccessfulState extends AppStates {
  final PrayerTimes prayerTimes;

  GetPrayerTimesSuccessfulState({required this.prayerTimes});
}

class GetPrayerTimesErrorState extends AppStates {
  final String message;

  GetPrayerTimesErrorState({required this.message});
}
