import 'package:dartz/dartz.dart';
import 'package:prayer_timing/core/errors/failures.dart';
import 'package:prayer_timing/features/prayer_times/domain/entities/prayer_times.dart';
import 'package:prayer_timing/features/prayer_times/domain/repositories/prayer_times_repository.dart';

class GetPrayerTimesUsecase {
  final PrayerTimesRepository prayerTimesRepository;
  GetPrayerTimesUsecase(this.prayerTimesRepository);

  Future<Either<Failure, PrayerTimes>> execute({
    required double latitude,
    required double longitude,
    required int year,
    required int month,
  }) async {
    return await prayerTimesRepository.getPrayerTimes(
      latitude,
      longitude,
      year,
      month,
    );
  }
}
