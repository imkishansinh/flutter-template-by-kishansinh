import 'dart:developer' as developer;

import 'package:weather_app_by_kishansinh/features/weather_home/data/models/remote_search_city_result_data.dart';

import '../../../core/domain/result.dart';
import '../../data/repositories/weather_repo_impl.dart';

class QueryCityUc {
  final WeatherRepoImpl _weatherRepoImpl;

  QueryCityUc(this._weatherRepoImpl);

  Future<Result<RemoteSearchCityResultData>> call(String cityName) async {
    // We can maintaine other exceptions here too like no internet etc
    // but for now lets keep it simple

    try {
      // ok lets call the weather repo

      return Result(
        data: await _weatherRepoImpl.getWeatherByCityName(cityName),
      );
    } on Exception catch (e, s) {
      // Log exception
      developer.log('error while QueryCityUc', error: e, stackTrace: s);

      return Result(error: e.toString());
    } catch (e, s) {
      // Log exception
      developer.log('error while QueryCityUc', error: e, stackTrace: s);

      return Result(error: 'Something went wrong');
    }
  }
}
