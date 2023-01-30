part of 'open_feature_cubit.dart';

abstract class OpenFeatureState extends Equatable {
  const OpenFeatureState();

  @override
  List<Object> get props => [];
}

class OpenFeatureInitial extends OpenFeatureState {}
