import 'package:booklyapp/features/home_featuer/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home_featuer/data/reposetory/home_repo_impl.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_feature_state.dart';

class HomeFeatureCubit extends Cubit<HomeFeatureState> {
  HomeFeatureCubit(this.homeRepoImpl) : super(HomeFeatureInitial());
  HomeRepoImpl homeRepoImpl;

  Future<void> fetchBeseSellerBook() async {
    emit(HomeFeatureLoding());
    var resallt = await homeRepoImpl.fetchBeseSellerBook();
    resallt.fold(
      (r) => emit(HomeFeatureError(errMassage: r.errMassage)),
      (l) => emit(HomeFeatureLoded(l)),
    );

    // await homeRepoImpl
    //     .fetchBeseSellerBook()
    //     .then((resallt) => resallt.fold(
    //         (error) => emit(HomeFeatureError(errMassage: error.errMassage)),
    //         (books) => emit(HomeFeatureLoded(books))))
    //     .catchError((error) {});
  }
}
