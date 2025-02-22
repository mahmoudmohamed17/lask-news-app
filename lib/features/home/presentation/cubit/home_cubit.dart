import 'package:bloc/bloc.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';
import 'package:lask_news_app/features/home/domain/repositories/home_repo.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial()) {
    getNews(category: 'sports,business,entertainment,');
  }
  final HomeRepo homeRepo;

  Future<void> getNews({String category = 'top'}) async {
    emit(HomeLoading());
    var result = await homeRepo.getNews(category: category);
    result.fold((failure) => emit(HomeFailed(message: failure.message)),
        (news) => emit(HomeSuccess(news: news)));
  }
}
