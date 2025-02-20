import 'package:lask_news_app/core/funcs/get_weather_image.dart';
import 'package:lask_news_app/core/utils/api_keys.dart';
import 'package:lask_news_app/features/home/data/models/weather_model.dart';
import 'package:weather/weather.dart';

class WeatherService {
  static Future<WeatherModel> getCurrentWeather() async {
    WeatherFactory wf = WeatherFactory(ApiKeys.weatherApiKey);
    Weather weather = await wf.currentWeatherByCityName('Cairo');
    var weatherModel = WeatherModel(
        image: getWeatherImage(description: weather.weatherDescription!),
        weatherDescription: weather.weatherDescription!,
        temperature: weather.temperature!.celsius!.toStringAsFixed(2));
    return weatherModel;
  }
}
