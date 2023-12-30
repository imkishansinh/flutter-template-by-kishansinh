import 'package:json_annotation/json_annotation.dart';

part 'remote_search_city_result_data.g.dart';

@JsonSerializable()
class RemoteSearchCityResultData {
  final String message;
  final String cod;
  final int count;
  final List<CityItem> list;

  RemoteSearchCityResultData({
    required this.message,
    required this.cod,
    required this.count,
    required this.list,
  });

  factory RemoteSearchCityResultData.fromJson(Map<String, dynamic> json) =>
      _$RemoteSearchCityResultDataFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteSearchCityResultDataToJson(this);
}

@JsonSerializable()
class CityItem {
  final int id;
  final String name;
  final Coord coord;
  final Main main;
  final int dt;
  final Wind wind;
  final Sys sys;
  final Rain? rain;
  final Snow? snow;
  final Clouds clouds;
  final List<Weather> weather;

  CityItem({
    required this.id,
    required this.name,
    required this.coord,
    required this.main,
    required this.dt,
    required this.wind,
    required this.sys,
    required this.rain,
    required this.snow,
    required this.clouds,
    required this.weather,
  });

  factory CityItem.fromJson(Map<String, dynamic> json) =>
      _$CityItemFromJson(json);

  Map<String, dynamic> toJson() => _$CityItemToJson(this);
}

@JsonSerializable()
class Coord {
  final double lat;
  final double lon;

  Coord({required this.lat, required this.lon});

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);

  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable()
class Main {
  @JsonKey(name: 'temp')
  final double temperature;
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @JsonKey(name: 'temp_max')
  final double tempMax;
  final int pressure;
  final int humidity;

  Main({
    required this.temperature,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable()
class Wind {
  final double speed;
  final int deg;

  Wind({required this.speed, required this.deg});

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

  Map<String, dynamic> toJson() => _$WindToJson(this);
}

@JsonSerializable()
class Sys {
  final String country;

  Sys({required this.country});

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

  Map<String, dynamic> toJson() => _$SysToJson(this);
}

@JsonSerializable()
class Rain {
  Rain();

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);

  Map<String, dynamic> toJson() => _$RainToJson(this);
}

@JsonSerializable()
class Snow {
  Snow();

  factory Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(json);

  Map<String, dynamic> toJson() => _$SnowToJson(this);
}

@JsonSerializable()
class Clouds {
  final int all;

  Clouds({required this.all});

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

@JsonSerializable()
class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
