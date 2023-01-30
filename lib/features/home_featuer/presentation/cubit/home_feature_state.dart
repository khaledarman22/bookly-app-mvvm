part of 'home_feature_cubit.dart';

abstract class HomeFeatureState extends Equatable {
  const HomeFeatureState();

  @override
  List<Object> get props => [];
}

class HomeFeatureInitial extends HomeFeatureState {}

class HomeFeatureLoding extends HomeFeatureState {}

class HomeFeatureLoded extends HomeFeatureState {
  final List<BookModel> books;

  const HomeFeatureLoded(this.books);
}

class HomeFeatureError extends HomeFeatureState {
  final String errMassage;

  const HomeFeatureError({required this.errMassage});
}
