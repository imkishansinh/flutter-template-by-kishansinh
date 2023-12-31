import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../domain/repositories/weather_repo.dart';
import 'package:http/http.dart';

import '../models/remote_search_city_result_data.dart';
import '../models/remote_weather_data.dart';
import 'dart:developer' as developer;

class WeatherRepoImpl implements WeatherRepo {
  final String baseUrl;
  WeatherRepoImpl(this.baseUrl);

  @override
  Future<RemoteWeatherData> getWeather(num lat, num lon) async {
    try {
      if (lat <= 0 || lon <= 0) throw Exception('Invalid coordinates');

      Uri uri = Uri.parse('$baseUrl/weather');

      Map<String, dynamic> queryParameters = {};
      queryParameters.putIfAbsent('lat', () => lat.toString());
      queryParameters.putIfAbsent('lon', () => lon.toString());
      queryParameters.putIfAbsent('units', () => 'metric');
      queryParameters.putIfAbsent('appid', () => dotenv.env['WEATHER_API_KEY']);

      uri = uri.replace(queryParameters: queryParameters);

      Response res = await get(uri);

      if (res.statusCode == HttpStatus.ok) {
        RemoteWeatherData weatherData =
            RemoteWeatherData.fromJson(jsonDecode(res.body));

        return weatherData;
      }

      throw Exception('Failed to load weather data');
    } on TypeError catch (e, s) {
      developer.log('error', error: e, stackTrace: s);
      throw Exception('Type casting error');
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<RemoteSearchCityResultData> getWeatherByCityName(
      String cityName) async {
    try {
      if (cityName.isEmpty) throw Exception('Invalid city name');

      Uri uri = Uri.parse('$baseUrl/find');

      Map<String, dynamic> queryParameters = {};
      queryParameters.putIfAbsent('q', () => cityName);
      queryParameters.putIfAbsent('type', () => 'like');
      queryParameters.putIfAbsent('mode', () => 'json');
      queryParameters.putIfAbsent('units', () => 'metric');
      queryParameters.putIfAbsent('appid', () => dotenv.env['WEATHER_API_KEY']);

      uri = uri.replace(queryParameters: queryParameters);

      Response res = await get(uri);

      if (res.statusCode == HttpStatus.ok) {
        RemoteSearchCityResultData weatherData =
            RemoteSearchCityResultData.fromJson(jsonDecode(res.body));

        if (weatherData.list.isEmpty) throw Exception('City not found');

        return weatherData;
      }

      throw Exception('Failed to load weather data');
    } on TypeError catch (e, s) {
      developer.log('Type casting error', error: e, stackTrace: s);
      throw Exception('Type casting error');
    } catch (_) {
      rethrow;
    }
  }
}
