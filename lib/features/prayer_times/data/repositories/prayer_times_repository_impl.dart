import 'package:prayer_timing/features/prayer_times/data/data_sources/remote/web_services.dart';
import 'package:prayer_timing/features/prayer_times/data/models/prayer_times_model.dart';
import 'package:prayer_timing/features/prayer_times/domain/repositories/prayer_times_repository.dart';

class PrayerTimesRepositoryImpl implements PrayerTimesRepository {
  final WebServices webServices;

  PrayerTimesRepositoryImpl(this.webServices);

  @override
  Future<PrayerTimesModel> getPrayerTimes(
    String day,
    Month month,
    String year,
    double latitude,
    double longitude,
    int method,
  ) async {
    return await webServices.getPrayerTimes(
      latitude,
      longitude,
      method,
      day,
      month,
      year,
    );
  }
}
