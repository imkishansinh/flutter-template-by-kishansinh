import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app_by_kishansinh/features/core/domain/result.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/get_weather_data_by_lat_lon_uc.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/query_city_uc.dart';

import '../../data/models/remote_search_city_result_data.dart';
import '../../data/models/remote_weather_data.dart';

part 'weather_home_state.dart';

class WeatherHomeCubit extends Cubit<WeatherHomeState> {
  WeatherHomeCubit() : super(WeatherHomeInitial());

  Future<void> searchCity(String cityName) async {
    emit(WeatherLoading());
    try {
      Result<RemoteSearchCityResultData> result =
          await GetIt.I.get<QueryCityUc>().call(cityName);

      if (result.data != null && result.data!.list.isNotEmpty) {
        double lat = result.data?.list.first.coord.lat ?? 0;
        double lon = result.data?.list.first.coord.lon ?? 0;

        Result<RemoteWeatherData> weatherData =
            await GetIt.I.get<GetWeatherDataByLatLongUc>().call(lat, lon);

        if (weatherData.data == null) emit(const WeatherError('No data found'));

        emit(WeatherLoaded(weatherData.data!));
      } else {
        emit(const WeatherError('No data found'));
      }
    } catch (e) {
      emit(WeatherError(e.toString()));
    }
  }
}
