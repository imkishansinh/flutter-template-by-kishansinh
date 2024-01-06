import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_by_kishansinh/features/core/domain/result.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/models/remote_weather_data.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/repositories/weather_repo_impl.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/get_weather_data_by_lat_lon_uc.dart';

void main() {
  // Loading from a static string.
  dotenv.testLoad(fileInput: File('.env').readAsStringSync());

  group('GetWeatherDataByLatLongUc', () {
    test('should return weather data on success', () async {
      // Arrange
      num lat = 23.1077411;
      num lon = 72.5477262;

      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');
      final useCase = GetWeatherDataByLatLongUc(weatherRepoImpl);

      // Act
      Result result = await useCase.call(lat, lon);

      // Assert
      expect(result.data, isA<RemoteWeatherData>());
      expect(result.error, isNull);
    });

    test('should return an error message on failure', () async {
      // Arrange
      num lat = -91;
      num lon = 0;

      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');
      final useCase = GetWeatherDataByLatLongUc(weatherRepoImpl);

      // Act
      Result result = await useCase.call(lat, lon);

      // Assert
      expect(result.data, isNull);
      expect(result.error, isA<String>());
    });
  });
}
