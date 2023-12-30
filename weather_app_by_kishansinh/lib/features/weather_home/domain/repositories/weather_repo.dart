import '../../data/models/remote_search_city_result_data.dart';
import '../../data/models/remote_weather_data.dart';

abstract class WeatherRepo {
  // get weather details via lat and lng
  Future<RemoteWeatherData> getWeather(num lat, num lng);

  // get weather details via city name
  Future<RemoteSearchCityResultData> getWeatherByCityName(String cityName);
}
