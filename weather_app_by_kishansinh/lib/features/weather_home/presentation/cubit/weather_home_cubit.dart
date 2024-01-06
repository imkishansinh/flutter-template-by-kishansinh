import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app_by_kishansinh/features/core/domain/result.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/entities/ui_weather_data.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/get_weather_data_by_lat_lon_uc.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/domain/usecases/query_city_uc.dart';

import '../../data/models/remote_search_city_result_data.dart';
import '../../data/models/remote_weather_data.dart';

part 'weather_home_state.dart';

class WeatherHomeCubit extends Cubit<WeatherHomeState> {
  String lastFetchedCity = '';
  WeatherHomeCubit() : super(WeatherHomeInitial());

  Future<void> searchCity({String? cityName}) async {
    emit(WeatherLoading());
    try {
      // ok let's see this city is valid or not
      Result<RemoteSearchCityResultData> cityExistOrNotResult =
          await GetIt.I.get<QueryCityUc>().call(cityName ?? lastFetchedCity);

      // if city is valid
      if (cityExistOrNotResult.data != null &&
          cityExistOrNotResult.data!.list.isNotEmpty) {
        double lat = cityExistOrNotResult.data?.list.first.coord.lat ?? 0;
        double lon = cityExistOrNotResult.data?.list.first.coord.lon ?? 0;

        Result<RemoteWeatherData> weatherDataResult =
            await GetIt.I.get<GetWeatherDataByLatLongUc>().call(lat, lon);

        if (weatherDataResult.data == null) {
          emit(WeatherError(weatherDataResult.error ?? 'No data found'));
        } else {
          // we can use mapper or other Util class to convert remote server data to ui data
          UiWeatherData uiWeatherData = UiWeatherData(
            cityName: weatherDataResult.data!.name,
            mainStr: weatherDataResult.data!.weather.first.main,
            temp: weatherDataResult.data!.main.temp,
            minTemp: weatherDataResult.data!.main.tempMin,
            maxTemp: weatherDataResult.data!.main.tempMax,
            feelLike: weatherDataResult.data!.main.feelsLike,
            iconName: weatherDataResult.data!.weather.first.icon,
          );

          // update last fetched city
          lastFetchedCity = cityName ?? lastFetchedCity;

          // data is ready for view
          emit(WeatherLoaded(uiWeatherData));
        }
      } else {
        emit(WeatherError(cityExistOrNotResult.error ?? 'No data found'));
      }
    } catch (e) {
      emit(WeatherError(e.toString()));
    }
  }
}
