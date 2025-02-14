import 'package:lask_news_app/core/utils/api_keys.dart';
import 'package:lask_news_app/features/home/data/models/weather_model.dart';
import 'package:weather/weather.dart';

Future<WeatherModel> getCurrentWeather() async {
  WeatherFactory wf = WeatherFactory(ApiKeys.myWeatherApiKey);
  Weather weather = await wf.currentWeatherByCityName('Cairo');
  var weatherModel = WeatherModel(
      image: weather.weatherIcon!,
      weatherDescription: weather.weatherDescription!,
      temperature: weather.temperature!.celsius!.toStringAsFixed(2));
  return weatherModel;
}
