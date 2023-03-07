import 'package:equatable/equatable.dart';

class PrayerTimes extends Equatable {
  final int? statusCode;
  final String? status;
  final String fajr;
  final String duhr;
  final String asr;
  final String maghrib;
  final String isha;

  const PrayerTimes({
    this.status,
    this.statusCode,
    required this.fajr,
    required this.duhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });

  @override
  List<Object?> get props => [
        fajr,
        duhr,
        asr,
        maghrib,
        isha,
        statusCode,
        status,
      ];
}
