import 'package:flutter/material.dart';
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
      children: [
        weatherModel.image.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Image.network(
                "https://openweathermap.org/img/wn/${weatherModel.image}@2x.png",
                height: 48,
                width: 48,
              ),
        Text(
          weatherModel.weatherDescription,
          style:
              Styles.semiBold14.copyWith(color: AppColors.secondaryTextColor),
        ),
        Text(
          '${weatherModel.temperature}°C',
          style:
              Styles.semiBold14.copyWith(color: AppColors.secondaryTextColor),
        ),
      ],
    );
  }
}
