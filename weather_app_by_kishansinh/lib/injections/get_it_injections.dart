import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/repositories/weather_repo_impl.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/get_weather_data_by_lat_lon_uc.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/query_city_uc.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/presentation/cubit/weather_home_cubit.dart';

void setupDependencyInjection() {
  GetIt.instance.registerSingleton<WeatherRepoImpl>(
    WeatherRepoImpl(dotenv.env['BASE_URL'] ?? ''),
  );

  GetIt.instance.registerSingleton<GetWeatherDataByLatLongUc>(
    GetWeatherDataByLatLongUc(GetIt.instance<WeatherRepoImpl>()),
  );

  GetIt.instance.registerSingleton<QueryCityUc>(
    QueryCityUc(GetIt.instance<WeatherRepoImpl>()),
  );

  GetIt.instance.registerSingleton<WeatherHomeCubit>(WeatherHomeCubit());
}
