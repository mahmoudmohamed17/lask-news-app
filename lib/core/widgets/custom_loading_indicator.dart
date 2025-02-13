import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 70,
        width: 70,
        child: LoadingIndicator(
          indicatorType: Indicator.lineScale,
          strokeWidth: 4,
          backgroundColor: Colors.transparent,
          colors: [Colors.black],
        ),
      ),
    );
  }
}
