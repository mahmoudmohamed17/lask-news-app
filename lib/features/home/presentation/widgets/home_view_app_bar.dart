import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/core/utils/weather_manager.dart';
import 'package:lask_news_app/features/home/presentation/widgets/current_weather_widget.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Live News',
          style: Styles.semiBold18,
        ),
        CurrentWeatherWidget(weatherModel: WeatherManager.weatherModel),
      ],
    );
  }
}
