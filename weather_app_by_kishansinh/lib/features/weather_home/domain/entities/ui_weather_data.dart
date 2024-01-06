import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_weather_data.freezed.dart';
part 'ui_weather_data.g.dart';

@freezed
class UiWeatherData with _$UiWeatherData {
  const factory UiWeatherData({
    required String cityName,
    required String mainStr,
    required double feelLike,
    required String iconName,
    required double temp,
    required double minTemp,
    required double maxTemp,
  }) = _UiWeatherData;

  factory UiWeatherData.fromJson(Map<String, dynamic> json) =>
      _$UiWeatherDataFromJson(json);
}
