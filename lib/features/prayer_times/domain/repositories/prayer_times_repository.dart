import 'package:dartz/dartz.dart';
import 'package:prayer_timing/core/errors/failures.dart';
import 'package:prayer_timing/features/prayer_times/domain/entities/prayer_times.dart';

abstract class PrayerTimesRepository {
  Future<Either<Failure, PrayerTimes>> getPrayerTimes(
    double latitude,
    double longitude,
    int year,
    int month,
  );
}