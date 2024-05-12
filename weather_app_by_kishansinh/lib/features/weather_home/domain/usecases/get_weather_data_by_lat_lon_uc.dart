import 'dart:developer' as developer;

import '../../../core/domain/result.dart';
import '../../data/models/remote_weather_data.dart';
import '../../data/repositories/weather_repo_impl.dart';

class GetWeatherDataByLatLongUc {
  final WeatherRepoImpl _weatherRepoImpl;

  GetWeatherDataByLatLongUc(this._weatherRepoImpl);

  Future<Result<RemoteWeatherData>> call(num lat, num lon) async {
    // We can maintaine other exceptions here too like no internet etc
    // but for now lets keep it simple

    try {
      // ok lets call the weather repo
      return Result(
        data: await _weatherRepoImpl.getWeather(lat, lon),
      );
    } on Exception catch (e, s) {
      // Log exception
      developer.log(
        'error while GetWeatherDataByLatLongUc',
        error: e,
        stackTrace: s,
      );

      return Result(error: e.toString());
    } catch (e, s) {
      // Log exception
      developer.log(
        'error while GetWeatherDataByLatLongUc',
        error: e,
        stackTrace: s,
      );

      return Result(error: 'Something went wrong');
    }
  }
}
