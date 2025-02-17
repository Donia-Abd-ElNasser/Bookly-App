import 'package:booklyapp/Features/Splash/Presentation/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:booklyapp/Features/Splash/data/repos/home_repos_impl.dart';
import 'package:booklyapp/core/routes.dart';

import 'package:booklyapp/core/services/sevice_locator.dart' ;
import 'package:booklyapp/costants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
 setupGetIt();
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(getIt.get<HomeReposImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(
            getIt.get<HomeReposImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
    
    
      child: MaterialApp.router(
        routerConfig: AppRoutes.routers,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
