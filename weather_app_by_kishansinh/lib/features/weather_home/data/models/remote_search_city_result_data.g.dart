// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_search_city_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteSearchCityResultData _$RemoteSearchCityResultDataFromJson(
        Map<String, dynamic> json) =>
    RemoteSearchCityResultData(
      message: json['message'] as String,
      cod: json['cod'] as String,
      count: json['count'] as int,
      list: (json['list'] as List<dynamic>)
          .map((e) => CityItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RemoteSearchCityResultDataToJson(
        RemoteSearchCityResultData instance) =>
    <String, dynamic>{
      'message': instance.message,
      'cod': instance.cod,
      'count': instance.count,
      'list': instance.list,
    };

CityItem _$CityItemFromJson(Map<String, dynamic> json) => CityItem(
      id: json['id'] as int,
      name: json['name'] as String,
      coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      dt: json['dt'] as int,
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      rain: json['rain'] == null
          ? null
          : Rain.fromJson(json['rain'] as Map<String, dynamic>),
      snow: json['snow'] == null
          ? null
          : Snow.fromJson(json['snow'] as Map<String, dynamic>),
      clouds: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CityItemToJson(CityItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'main': instance.main,
      'dt': instance.dt,
      'wind': instance.wind,
      'sys': instance.sys,
      'rain': instance.rain,
      'snow': instance.snow,
      'clouds': instance.clouds,
      'weather': instance.weather,
    };

Coord _$CoordFromJson(Map<String, dynamic> json) => Coord(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

Main _$MainFromJson(Map<String, dynamic> json) => Main(
      temperature: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temperature,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
      speed: (json['speed'] as num).toDouble(),
      deg: json['deg'] as int,
    );

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(
      country: json['country'] as String,
    );

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'country': instance.country,
    };

Rain _$RainFromJson(Map<String, dynamic> json) => Rain();

Map<String, dynamic> _$RainToJson(Rain instance) => <String, dynamic>{};

Snow _$SnowFromJson(Map<String, dynamic> json) => Snow();

Map<String, dynamic> _$SnowToJson(Snow instance) => <String, dynamic>{};

Clouds _$CloudsFromJson(Map<String, dynamic> json) => Clouds(
      all: json['all'] as int,
    );

Map<String, dynamic> _$CloudsToJson(Clouds instance) => <String, dynamic>{
      'all': instance.all,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
