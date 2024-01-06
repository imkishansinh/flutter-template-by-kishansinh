import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/models/remote_search_city_result_data.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/models/remote_weather_data.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/repositories/weather_repo_impl.dart';

void main() {
  group('WeatherRepoImpl', () {
    // Loading from a static string.
    dotenv.testLoad(fileInput: File('.env').readAsStringSync());

    test(
        'getWeather returns a RemoteWeatherData object when a valid latitude and longitude are provided',
        () async {
      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');

      // Call the getWeather method with a valid latitude and longitude.
      final weatherData =
          await weatherRepoImpl.getWeather(23.1077411, 72.5477262);

      // Verify that the getWeather method returned a RemoteWeatherData object.
      expect(weatherData, isA<RemoteWeatherData>());
    });

    test(
        'getWeather throws an error when an invalid latitude or longitude is provided',
        () async {
      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');

      // Call the getWeather method with a valid latitude and longitude.
      final weatherData = weatherRepoImpl.getWeather(-91, 0);

      // Call the getWeather method with an invalid latitude or longitude.
      expect(() => weatherData, throwsA(isA<Exception>()));
    });

    test(
        'getWeather returns a RemoteWeatherData object with the correct data when a valid latitude and longitude are provided',
        () async {
      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');

      // Call the getWeather method with a valid latitude and longitude.
      final weatherData =
          await weatherRepoImpl.getWeather(23.1077411, 72.5477262);

      // Verify that the RemoteWeatherData object has the correct data.
      expect(weatherData.name, 'Adalaj');
      expect(weatherData.coord.lat, 23.1077);
      expect(weatherData.coord.lon, 72.5477);
    });

    test(
        'getWeatherByCityName returns a RemoteWeatherData object when a valid city name is provided',
        () async {
      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');

      // Call the getWeatherByCityName method with a valid city name.
      final weatherData = await weatherRepoImpl.getWeatherByCityName('Adalaj');

      // Verify that the getWeatherByCityName method returned a RemoteSearchCityResultData object.
      expect(weatherData, isA<RemoteSearchCityResultData>());
    });

    test(
        'getWeatherByCityName throws an error when an blank city name is provided',
        () async {
      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');

      // Call the getWeatherByCityName method with an invalid city name.
      final weatherData = weatherRepoImpl.getWeatherByCityName('');

      // Call the getWeatherByCityName method with an invalid city name.
      expect(() => weatherData, throwsA(isA<Exception>()));
    });

    test(
        'getWeatherByCityName throws an error when an invalid city name is provided',
        () async {
      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');

      // Call the getWeatherByCityName method with an invalid city name.
      final weatherData = weatherRepoImpl.getWeatherByCityName('kishan');

      // Call the getWeatherByCityName method with an invalid city name.
      expect(() => weatherData, throwsA(isA<Exception>()));
    });

    test(
        'getWeatherByCityName returns a RemoteWeatherData object with the correct data when a valid city name is provided',
        () async {
      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');

      // Call the getWeatherByCityName method with a valid city name.
      final weatherData = await weatherRepoImpl.getWeatherByCityName('Adalaj');

      // Verify that the RemoteWeatherData object has the correct data.
      expect(weatherData.list.first.name, 'Adalaj');
      // expect(weatherData.list.first.coord.lat, 23.1077);
      // expect(weatherData.list.first.coord.lon, 72.5477);
    });
  });
}
