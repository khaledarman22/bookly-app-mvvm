import 'package:booklyapp/core/services_locator/services_locator.dart';
import 'package:booklyapp/core/utils/app_routers.dart';
import 'package:booklyapp/core/utils/themes/dark_mode.dart';
import 'package:booklyapp/features/home_featuer/presentation/cubit/home_feature_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeFeatureCubit(sl())..fetchBeseSellerBook(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: darkThemeData(),
        routerConfig: AppRouter.router,
        // home: const HomeView(),
      ),
    );
  }
}
