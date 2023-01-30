import 'package:booklyapp/features/home_featuer/presentation/view/home_view.dart';
import 'package:booklyapp/features/open%20feature/presentation/view/open_book_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/openBookView',
        builder: (context, state) => const OpenBookView(),
      ),
    ],
  );
}
