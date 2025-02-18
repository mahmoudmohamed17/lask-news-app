import 'package:flutter/material.dart';
import 'package:lask_news_app/core/funcs/capitalize_first_letter.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/data/models/weather_model.dart';

class CurrentWeatherWidget extends StatelessWidget {
  const CurrentWeatherWidget({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          weatherModel.image,
          height: 32,
          width: 32,
        ),
        Text(
          capitalizeFirstLetter(weatherModel.weatherDescription),
          style:
              Styles.semiBold14.copyWith(color: AppColors.secondaryHeavyTextColor),
        ),
        Text(
          '${weatherModel.temperature}°C',
          style:
              Styles.semiBold14.copyWith(color: AppColors.secondaryHeavyTextColor),
        ),
      ],
    );
  }
}
