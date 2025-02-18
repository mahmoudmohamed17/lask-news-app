import 'package:lask_news_app/core/services/weather_service.dart';
import 'package:lask_news_app/features/home/data/models/weather_model.dart';

class WeatherManager {
  static late WeatherModel weatherModel;
  static Future<void> getWeather() async {
    weatherModel = await WeatherService.getCurrentWeather();
  }
}
