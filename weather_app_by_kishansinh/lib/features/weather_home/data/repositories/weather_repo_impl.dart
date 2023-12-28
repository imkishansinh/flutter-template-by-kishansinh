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
  Future<RemoteWeatherData> getWeather(num lat, num lon) async {
    try {
      if (lat <= 0 || lon <= 0) throw Exception('Invalid coordinates');

      Uri uri = Uri.parse(baseUrl);

      Map<String, dynamic> queryParameters = {};
      queryParameters.putIfAbsent('lat', () => lat.toString());
      queryParameters.putIfAbsent('lon', () => lon.toString());
      queryParameters.putIfAbsent('appid', () => dotenv.env['WEATHER_API_KEY']);

      uri = uri.replace(queryParameters: queryParameters);

      Response res = await get(uri);

      if (res.statusCode == HttpStatus.ok) {
        RemoteWeatherData weatherData =
            RemoteWeatherData.fromJson(jsonDecode(res.body));

        return weatherData;
      }

      throw Exception('Failed to load weather data');
    } on TypeError catch (_) {
      throw Exception('Type casting error');
    } catch (_) {
      rethrow;
    }
  }
}
