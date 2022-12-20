import 'package:prayer_timing/features/prayer_times/data/models/prayer_times_model.dart';
import 'package:prayer_timing/features/prayer_times/domain/repositories/prayer_times_repository.dart';

class GetPrayerTimesUsecase {
  final PrayerTimesRepository prayerTimesRepository;

  GetPrayerTimesUsecase(this.prayerTimesRepository);

  Future<PrayerTimesModel> call(
    double latitude,
    double longitude,
    int method,
    String day,
    Month month,
    String year,
  ) async {
    return await prayerTimesRepository.getPrayerTimes(
      day,
      month,
      year,
      latitude,
      longitude,
      method,
    );
  }
}
