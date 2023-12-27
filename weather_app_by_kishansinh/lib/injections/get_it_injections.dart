import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/data/repositories/weather_repo_impl.dart';

void setupDependencyInjection() {
  GetIt.instance
      .registerSingleton(WeatherRepoImpl(dotenv.env['BASE_URL'] ?? ''));
}
