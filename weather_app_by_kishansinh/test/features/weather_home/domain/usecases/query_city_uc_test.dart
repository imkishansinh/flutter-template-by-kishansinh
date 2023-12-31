import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_by_kishansinh/features/core/domain/result.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/models/remote_search_city_result_data.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/repositories/weather_repo_impl.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/query_city_uc.dart';

void main() {
  // Loading from a static string.
  dotenv.testLoad(fileInput: File('.env').readAsStringSync());

  group('QueryCityUc', () {
    test('should return weather data on success', () async {
      // Arrange
      String cityName = 'Ahmedabad';

      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');
      final useCase = QueryCityUc(weatherRepoImpl);

      // Act
      Result result = await useCase.call(cityName);

      // Assert
      expect(result.data, isA<RemoteSearchCityResultData>());
      expect(result.error, isNull);
    });

    test('should return an error message on failure', () async {
      // Arrange
      String cityName = 'asduyqw';

      // Create an instance of the WeatherRepoImpl class.
      final weatherRepoImpl = WeatherRepoImpl('${dotenv.env['BASE_URL']}');
      final useCase = QueryCityUc(weatherRepoImpl);

      // Act
      Result result = await useCase.call(cityName);

      // Assert
      expect(result.data, isNull);
      expect(result.error, isA<String>());
    });
  });
}
