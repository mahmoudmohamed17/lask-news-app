import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12,
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: LoadingIndicator(
              indicatorType: Indicator.lineScale,
              strokeWidth: 4,
              backgroundColor: Colors.transparent,
              colors: [Colors.black],
            ),
          ),
          Text('Loading...', style: Styles.semiBold18,),
        ],
      ),
    );
  }
}
