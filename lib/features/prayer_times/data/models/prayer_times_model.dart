import 'package:prayer_timing/features/prayer_times/domain/entities/prayer_times.dart';

class PrayerTimesModel extends PrayerTimes {
  const PrayerTimesModel({
    super.status,
    super.statusCode,
    required super.fajr,
    required super.duhr,
    required super.asr,
    required super.maghrib,
    required super.isha,
  });

  factory PrayerTimesModel.fromJson(Map<String, dynamic> json) =>
      PrayerTimesModel(
        status: json['status'],
        statusCode: json['code'],
        fajr: json['data'][0]['timings']['Fajr'],
        duhr: json['data'][0]['timings']['Dhuhr'],
        asr: json['data'][0]['timings']['Asr'],
        maghrib: json['data'][0]['timings']['Maghrib'],
        isha: json['data'][0]['timings']['Isha'],
      );
}
