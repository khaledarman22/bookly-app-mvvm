import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'open_feature_state.dart';

class OpenFeatureCubit extends Cubit<OpenFeatureState> {
  OpenFeatureCubit() : super(OpenFeatureInitial());
}
