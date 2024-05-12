import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/repositories/weather_repo_impl.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/get_weather_data_by_lat_lon_uc.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/query_city_uc.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/presentation/cubit/weather_home_cubit.dart';

void main() {
  // Loading from a static string.
  dotenv.testLoad(fileInput: File('.env').readAsStringSync());

  group('searchCity', () {
    late WeatherHomeCubit cubit;

    setUp(() {
      GetIt.instance.registerSingleton<WeatherRepoImpl>(
        WeatherRepoImpl(dotenv.env['BASE_URL'] ?? ''),
      );

      GetIt.instance.registerSingleton<GetWeatherDataByLatLongUc>(
        GetWeatherDataByLatLongUc(GetIt.instance<WeatherRepoImpl>()),
      );

      GetIt.instance.registerSingleton<QueryCityUc>(
        QueryCityUc(GetIt.instance<WeatherRepoImpl>()),
      );

      cubit = WeatherHomeCubit();
    });

    tearDown(() {
      GetIt.instance.unregister<WeatherRepoImpl>();
      GetIt.instance.unregister<GetWeatherDataByLatLongUc>();
      GetIt.instance.unregister<QueryCityUc>();
    });

    /// We can compare and check the data as well if needed
    // equals(const WeatherLoaded(
    //   UiWeatherData(
    //     cityName: 'Ahmedabad',
    //     feelLike: 22.5,
    //     iconName: '50d',
    //     mainStr: 'Smoke',
    //     temp: 23.02,
    //     maxTemp: 23.02,
    //     minTemp: 23.02,
    //   ),
    // ))

    blocTest(
      'Valid city with valid weather data',
      build: () => cubit,
      act: (bloc) => bloc.searchCity(cityName: 'Ahmedabad'),
      expect: () => [isA<WeatherLoading>(), isA<WeatherLoaded>()],
    );

    blocTest(
      'Invalid city data trying',
      build: () => cubit,
      act: (bloc) => bloc.searchCity(cityName: ''),
      expect: () => [isA<WeatherLoading>(), isA<WeatherError>()],
    );
  });
}
