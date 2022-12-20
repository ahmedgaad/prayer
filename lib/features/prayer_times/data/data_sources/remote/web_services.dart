import 'package:json_annotation/json_annotation.dart';
import '../../../../../core/utils/constants_manager.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/prayer_times_model.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: AppConstantas.baseUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET("calendar/")
  Future<PrayerTimesModel> getPrayerTimes(
    @Query('latitude') double latitude,
    @Query('longitude') double longitude,
    @Query('method') int method,
    @Query('day') String day,
    @Query('month') Month month,
    @Query('year') String year
  );
}
