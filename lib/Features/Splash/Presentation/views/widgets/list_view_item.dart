
import 'package:booklyapp/Features/Splash/Presentation/views/Styles.dart';
import 'package:booklyapp/core/routes.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class ListViewContainer extends StatelessWidget {
   const ListViewContainer({super.key});
//VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: SizedBox(
         height: 125,
        child: Row(
          children: [
            AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          // width: 200,height: 100,
         decoration: BoxDecoration(
          color: const Color.fromARGB(31, 227, 224, 224),
          image: const DecorationImage(image: AssetImage('assets/test_image.png'),
          fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(16),
          
         ),
        ),
            ),
            const SizedBox(width: 15,),
              Expanded(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                     width: MediaQuery.of(context).size.width * .5,
                    child: const Text('Harry poter and the Goblet of firevvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv',
                    maxLines: 2,overflow: TextOverflow.ellipsis,style:Styles.textStyle20),
                  ),
                  const SizedBox(height: 3,),
                   const Text('j.k.rolling',style: Styles.textStyle14),
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'19.2$',style: Styles.textStyle18,),
                      BookRating(mainAxis: MainAxisAlignment.center,),
                    ],
                  ),
                ],
                          ),
              ),
        
          
        
        ],),
      ),
    );
  }
}