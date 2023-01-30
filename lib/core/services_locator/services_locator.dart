import 'package:booklyapp/core/utils/api/api_serves.dart';
import 'package:booklyapp/features/home_featuer/data/reposetory/home_repo_impl.dart';
import 'package:booklyapp/features/home_featuer/presentation/cubit/home_feature_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  init() {
    sl.registerLazySingleton(() => HomeFeatureCubit(sl()));
    sl.registerLazySingleton(() => ApiServes(sl()));
    sl.registerLazySingleton(() => Dio());
    sl.registerLazySingleton(() => HomeRepoImpl(apiServes: sl()));
  }
}
