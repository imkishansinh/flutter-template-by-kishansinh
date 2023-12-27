import '../../data/models/remote_weather_data.dart';

abstract class WeatherRepo {
  // get weather details via lat and lng
  Future<RemoteWeatherData> getWeather(String lat, String lng);
}
