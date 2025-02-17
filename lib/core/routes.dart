import 'package:booklyapp/Features/Splash/Presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/home_view.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/search_view.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/splash_view.dart';
import 'package:booklyapp/Features/Splash/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Splash/data/repos/home_repos_impl.dart';
import 'package:booklyapp/core/services/sevice_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeReposImpl>()),
        child:  BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: '/SearchView',
      builder: (context, state) => const SearchView(),
    )
  ]);
}
