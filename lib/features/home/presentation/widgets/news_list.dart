import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/snack_bar.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:lask_news_app/features/home/presentation/widgets/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeFailed) {
          snackBar(context, 'Something went wrong, please try again later.');
        }
      },
      builder: (context, state) {
        if (state is HomeSuccess) {
          var data = state.news;
          return SizedBox(
            height: context.height * 0.47,
            child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: NewsItem(
                      newsEntity: data[index],
                    ),
                  );
                }),
          );
        } else if (state is HomeFailed) {
          return Center(
              child: Text(
            'Something went wrong, try again later.',
            style: Styles.semiBold20.copyWith(color: AppColors.primaryColor),
          ));
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
