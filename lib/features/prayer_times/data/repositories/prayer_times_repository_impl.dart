import 'package:prayer_timing/core/errors/exceptions.dart';
import 'package:prayer_timing/core/network/netwok_info.dart';
import 'package:prayer_timing/features/prayer_times/data/data_sources/remote_datasource.dart';
import 'package:prayer_timing/features/prayer_times/domain/entities/prayer_times.dart';
import 'package:prayer_timing/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:prayer_timing/features/prayer_times/domain/repositories/prayer_times_repository.dart';

class PrayerTimesRepositoryImpl implements PrayerTimesRepository {
  final PrayerTimesDataSource prayerTimesDataSource;
  final NetworkInfo networkInfo;

  PrayerTimesRepositoryImpl({
    required this.prayerTimesDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, PrayerTimes>> getPrayerTimes(
      double latitude, double longitude, int year, int month) async {
    try {
      if (await networkInfo.isConnected) {
        final result = await prayerTimesDataSource.getPrayerTimes(
          latitude,
          longitude,
          year,
          month,
        );
        return Right(result);
      } else {
        throw OfflineException();
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
