import 'package:dio/dio.dart';
import 'package:prayer_timing/core/errors/exceptions.dart';
import 'package:prayer_timing/features/prayer_times/data/models/prayer_times_model.dart';

abstract class PrayerTimesRemoteDataSource {
  Future<PrayerTimesModel> getPrayerTimes({
    required double latitude,
    required double longitude,
    required int year,
    required int month,
  });
}

class PrayerTimesRemoteDataSourceImpl implements PrayerTimesRemoteDataSource {
  @override
  Future<PrayerTimesModel> getPrayerTimes({
    required double latitude,
    required double longitude,
    required int year,
    required int month,
  }) async {
    try {
      final response = await Dio().get(
        'http://api.aladhan.com/v1/calendar/$year/$month?latitude=$latitude&longitude=$longitude&method=5',
        options: Options(
          receiveDataWhenStatusError: true,
          receiveTimeout: 20 * 1000,
          sendTimeout: 20 * 1000,
        ),
      );
      if (response.data['code'] == 200) {
        final model = PrayerTimesModel.fromJson(response.data);
        print(model);
        return model;
      } else {
        throw ServerException();
      }
    } on DioError catch (error) {
      throw ServerException();
    }
  }
}
