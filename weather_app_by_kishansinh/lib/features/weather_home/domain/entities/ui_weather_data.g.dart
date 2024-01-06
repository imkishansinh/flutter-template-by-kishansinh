// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UiWeatherDataImpl _$$UiWeatherDataImplFromJson(Map<String, dynamic> json) =>
    _$UiWeatherDataImpl(
      cityName: json['cityName'] as String,
      mainStr: json['mainStr'] as String,
      feelLike: (json['feelLike'] as num).toDouble(),
      iconName: json['iconName'] as String,
      temp: (json['temp'] as num).toDouble(),
      minTemp: (json['minTemp'] as num).toDouble(),
      maxTemp: (json['maxTemp'] as num).toDouble(),
    );

Map<String, dynamic> _$$UiWeatherDataImplToJson(_$UiWeatherDataImpl instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'mainStr': instance.mainStr,
      'feelLike': instance.feelLike,
      'iconName': instance.iconName,
      'temp': instance.temp,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
    };
