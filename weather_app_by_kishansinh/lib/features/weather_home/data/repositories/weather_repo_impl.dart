import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../domain/repositories/weather_repo.dart';
import 'package:http/http.dart';

import '../models/remote_weather_data.dart';

class WeatherRepoImpl implements WeatherRepo {
  final String baseUrl;
  WeatherRepoImpl(this.baseUrl);

  @override
  Future<RemoteWeatherData> getWeather(String lat, String lon) async {
    try {
      if (lat.isEmpty || lon.isEmpty) throw Exception('Invalid coordinates');

      Uri uri = Uri.parse(baseUrl);

      Map<String, dynamic> queryParameters = {};
      queryParameters.putIfAbsent('lat', () => lat);
      queryParameters.putIfAbsent('lon', () => lon);
      queryParameters.putIfAbsent('appid', () => dotenv.env['WEATHER_API_KEY']);

      uri = uri.replace(queryParameters: queryParameters);

      Response res = await get(uri);

      if (res.statusCode == HttpStatus.ok) {
        RemoteWeatherData weatherData =
            RemoteWeatherData.fromJson(jsonDecode(res.body));

        return weatherData;
      }

      throw Exception('Failed to load weather data');
    } catch (_) {
      rethrow;
    }
  }
}
