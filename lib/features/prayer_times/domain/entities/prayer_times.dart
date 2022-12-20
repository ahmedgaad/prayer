import 'package:equatable/equatable.dart';

class PrayerTimes extends Equatable {
  final int? statusCode;
  final List<Data>? data;

  const PrayerTimes({
    this.statusCode,
    this.data,
  });

  @override
  List<Object?> get props => [
        statusCode,
        data,
      ];
}

class Data extends Equatable {
  final Timings? timings;
  final Date? date;

  const Data({
    this.timings,
    this.date,
  });

  @override
  List<Object?> get props => [
        timings,
        date,
      ];
}

class Timings extends Equatable {
  final String? fajr;
  final String? sunrise;
  final String? dhuhr;
  final String? asr;
  final String? maghrib;
  final String? isha;

  const Timings({
    this.fajr,
    this.sunrise,
    this.dhuhr,
    this.asr,
    this.maghrib,
    this.isha,
  });

  @override
  List<Object?> get props => [
        fajr,
        sunrise,
        dhuhr,
        asr,
        maghrib,
        isha,
      ];
}

class Date extends Equatable {
  final Gregorian? gregorian;

  const Date({
    this.gregorian,
  });

  @override
  List<Object?> get props => [
        gregorian,
      ];
}

class Gregorian extends Equatable {
  final String? day;
  final Month? month;
  final String? year;

  const Gregorian({
    this.day,
    this.month,
    this.year,
  });
  @override
  List<Object?> get props => [day, month, year];
}

class Month extends Equatable {
  final int? number;

  const Month({
    this.number,
  });

  @override
  List<Object?> get props => [number];
}
