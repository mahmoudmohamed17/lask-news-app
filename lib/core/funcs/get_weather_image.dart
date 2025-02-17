import 'package:lask_news_app/core/utils/assets.dart';

String getWeatherImage({required String description}) {
  switch (description) {
    case 'clear':
    case 'clear sky':
    case 'sunny':
    case 'moderate':
    case 'heatwave':
      return Assets.imagesClear;
    case 'partly cloudy':
    case 'cloudy':
    case 'few clouds':
    case 'overcast clouds':
    case 'scattered clouds':
    case 'overcast':
    case 'foggy':
    case 'misty':
      return Assets.imagesCloudy;
    case 'rainy':
    case 'light rain':
    case 'moderate rain':
    case '':
    case 'heavy rainy':
      return Assets.imagesRainy;
    case 'snowy':
    case 'icy':
    case 'frosty':
    case 'light snow':
    case 'heavy snow':
    case 'hailstorm':
      return Assets.imagesSnow;
    case 'windy':
    case 'thunderstorm':
      return Assets.imagesThunderstorm;
    default:
      return Assets.imagesClear;
  }
}
