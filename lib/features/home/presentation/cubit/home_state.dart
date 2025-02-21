part of 'home_cubit.dart';

class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final List<NewsEntity> news;

  HomeSuccess({required this.news});
}

class HomeFailed extends HomeState {
  final String message;

  HomeFailed({required this.message});
}
