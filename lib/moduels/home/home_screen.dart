import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/component/components.dart';
import 'package:untitled/layout/contest_type.dart';
import 'package:untitled/layout/user_1/user_body.dart';
import 'package:untitled/layout/user_2/user2_body.dart';
import 'package:untitled/layout/user_3/user3_body.dart';
import 'package:untitled/layout/user_4/user4_body.dart';
import 'package:untitled/moduels/home/card_contest.dart';
import 'package:untitled/moduels/home/header.dart';
import 'package:untitled/moduels/home/header_title.dart';
import 'package:untitled/moduels/home/card_app.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB4E9F7),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              HeaderContainer(),
              HeaderTitle(
                press: ()=> Get.to(()=> ContestType(),),
                title: 'Popular Contest',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    CardApp(
                      press: ()=> Get.to(()=> UserScreen(),),
                      title: 'Delivery App',
                      discrbtion:
                          'We need delivery app but with a fun look,Our target is the user and the courier can use it easily',
                      color: Colors.blueAccent.withOpacity(0.6),
                    ),
                    CardApp(
                      press: ()=> Get.to(()=> UsersScreen(),),
                      title: 'E-Commerce App',
                      discrbtion:
                          'We need shop app but with a fun look,Our target is the user and the courier can use it easily',
                      color: Colors.purple.withOpacity(0.6),
                    ),
                    CardApp(
                      press: ()=> Get.to(()=> UserScreens(),),
                      title: 'Logo App',
                      discrbtion:
                          'We need shop app but with a fun look,Our target is the user and the courier can use it easily',
                      color: Colors.blueAccent.withOpacity(0.6),
                    ),
                    CardApp(
                      press: ()=> Get.to(()=> User4Screens(),),
                      title: 'Yahoo App',
                      discrbtion:
                      'We need shop app but with a fun look,Our target is the user and the courier can use it easily',
                      color: Colors.purple.withOpacity(0.6),
                    ),
                  ],
                ),
              ),
              HeaderTitle(
                press: (){},
                title: 'Recent Contest',
              ),
              CardContest(
                image: 'assets/images/shops.jpg',
                title: 'Winner',
                text: 'Financial Mobile',
                type: 'app',
              ),
              CardContest(
                image: 'assets/images/shhop.jpg',
                title: 'Winner',
                text: 'E-commerce Logo',
                type: 'Design',
              ),
              CardContest(
                image: 'assets/images/shop.jpg',
                title: 'Winner',
                text: 'Tech app',
                type: 'Design',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
