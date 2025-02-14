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
    case 'overcast':
    case 'foggy':
    case 'misty':
      return Assets.imagesCloudy;
    case 'rainy':
    case 'heavy rainy':
      return Assets.imagesRainy;
    case 'snowy':
    case 'icy':
    case 'frosty':
    case 'hailstorm':
      return Assets.imagesSnow;
    case 'windy':
    case 'thunderstorm':
      return Assets.imagesThunderstorm;
    default:
      return Assets.imagesClear;
  }
}
