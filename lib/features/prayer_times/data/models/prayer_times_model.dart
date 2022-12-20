import 'package:json_annotation/json_annotation.dart';
part  'prayer_times_model.g.dart';

@JsonSerializable()
class PrayerTimesModel {
  @JsonKey(name: 'code')
  int? statusCode;
  String? status;
  List<Data>? data;

  PrayerTimesModel({this.statusCode, this.status, this.data});

  factory PrayerTimesModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimesModelFromJson(json);
  Map<String, dynamic> toJson() => _$PrayerTimesModelToJson(this);
}

@JsonSerializable()
class Data {
  Timings? timings;
  Date? date;
  Meta? meta;

  Data({this.timings, this.date, this.meta});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Timings {
  String? fajr;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? maghrib;
  String? isha;
  String? imsak;
  String? midnight;
  String? firstthird;
  String? lastthird;

  Timings(
      {this.fajr,
      this.sunrise,
      this.dhuhr,
      this.asr,
      this.sunset,
      this.maghrib,
      this.isha,
      this.imsak,
      this.midnight,
      this.firstthird,
      this.lastthird});

  factory Timings.fromJson(Map<String, dynamic> json) =>
      _$TimingsFromJson(json);
  Map<String, dynamic> toJson() => _$TimingsToJson(this);
}

@JsonSerializable()
class Date {
  String? readable;
  String? timestamp;
  Gregorian? gregorian;
  Hijri? hijri;

  Date({this.readable, this.timestamp, this.gregorian, this.hijri});

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
  Map<String, dynamic> toJson() => _$DateToJson(this);
}

@JsonSerializable()
class Gregorian {
  String? date;
  String? format;
  String? day;
  Weekday? weekday;
  Month? month;
  String? year;
  Designation? designation;

  Gregorian(
      {this.date,
      this.format,
      this.day,
      this.weekday,
      this.month,
      this.year,
      this.designation});

  factory Gregorian.fromJson(Map<String, dynamic> json) =>
      _$GregorianFromJson(json);
  Map<String, dynamic> toJson() => _$GregorianToJson(this);
}

@JsonSerializable()
class Weekday {
  String? en;

  Weekday({this.en});

  factory Weekday.fromJson(Map<String, dynamic> json) =>
      _$WeekdayFromJson(json);
  Map<String, dynamic> toJson() => _$WeekdayToJson(this);
}

@JsonSerializable()
class Month {
  int? number;
  String? en;

  Month({this.number, this.en});

  factory Month.fromJson(Map<String, dynamic> json) => _$MonthFromJson(json);
  Map<String, dynamic> toJson() => _$MonthToJson(this);
}

@JsonSerializable()
class Designation {
  String? abbreviated;
  String? expanded;

  Designation({this.abbreviated, this.expanded});

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$DesignationToJson(this);
}

@JsonSerializable()
class Hijri {
  String? date;
  String? format;
  String? day;
  DayOfWeekHijri? weekday;
  MonthHijri? month;
  String? year;
  Designation? designation;

  Hijri({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
  });

  factory Hijri.fromJson(Map<String, dynamic> json) => _$HijriFromJson(json);
  Map<String, dynamic> toJson() => _$HijriToJson(this);
}

@JsonSerializable()
class DayOfWeekHijri {
  String? en;
  String? ar;

  DayOfWeekHijri({this.en, this.ar});

  factory DayOfWeekHijri.fromJson(Map<String, dynamic> json) =>
      _$DayOfWeekHijriFromJson(json);
  Map<String, dynamic> toJson() => _$DayOfWeekHijriToJson(this);
}

@JsonSerializable()
class MonthHijri {
  int? number;
  String? en;
  String? ar;

  MonthHijri({this.number, this.en, this.ar});

  factory MonthHijri.fromJson(Map<String, dynamic> json) =>
      _$MonthHijriFromJson(json);
  Map<String, dynamic> toJson() => _$MonthHijriToJson(this);
}

@JsonSerializable()
class Meta {
  double? latitude;
  double? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Offset? offset;

  Meta(
      {this.latitude,
      this.longitude,
      this.timezone,
      this.method,
      this.latitudeAdjustmentMethod,
      this.midnightMode,
      this.school,
      this.offset});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Method {
  int? id;
  String? name;
  Params? params;
  Location? location;

  Method({this.id, this.name, this.params, this.location});

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);
  Map<String, dynamic> toJson() => _$MethodToJson(this);
}

@JsonSerializable()
class Params {
  int? fajr;
  int? isha;

  Params({this.fajr, this.isha});

  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);
  Map<String, dynamic> toJson() => _$ParamsToJson(this);
}

@JsonSerializable()
class Location {
  double? latitude;
  double? longitude;

  Location({this.latitude, this.longitude});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Offset {
  int? imsak;
  int? fajr;
  int? sunrise;
  int? dhuhr;
  int? asr;
  int? maghrib;
  int? sunset;
  int? isha;
  int? midnight;

  Offset(
      {this.imsak,
      this.fajr,
      this.sunrise,
      this.dhuhr,
      this.asr,
      this.maghrib,
      this.sunset,
      this.isha,
      this.midnight});

  factory Offset.fromJson(Map<String, dynamic> json) => _$OffsetFromJson(json);
  Map<String, dynamic> toJson() => _$OffsetToJson(this);
}
