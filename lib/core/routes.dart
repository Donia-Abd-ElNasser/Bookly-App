import 'package:booklyapp/Features/Splash/Presentation/views/home_view.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/search_view.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../Features/Splash/Presentation/views/book_details_view.dart';

abstract class AppRoutes {
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  // static const kBookDetailsView='/BookDetailsView';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/BookDetailsView',
      builder: (context, state) => const BookDetailsView(),
    ),
    GoRoute(
      path: '/SearchView',
      builder: (context, state) => const SearchView(),
    )
  ]);
}
