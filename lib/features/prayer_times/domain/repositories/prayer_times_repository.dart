import 'package:prayer_timing/features/prayer_times/data/models/prayer_times_model.dart';

abstract class PrayerTimesRepository {
  Future<PrayerTimesModel> getPrayerTimes(
    String day,
    Month month,
    String year,
    double latitude,
    double longitude,
    int method
  );
}
