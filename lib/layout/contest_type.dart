import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/component/components.dart';
import 'package:untitled/layout/user_1/user_body.dart';
import 'package:untitled/layout/user_2/user2_body.dart';
import 'package:untitled/layout/user_3/user3_body.dart';
import 'package:untitled/layout/user_4/user4_body.dart';
import 'package:untitled/moduels/home/card_app.dart';

class ContestType extends StatelessWidget {
  const ContestType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB4E9F7),
      appBar: AppBar(
        backgroundColor:Color(0xFFB4E9F7) ,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Contest',
                style: Theme.of(context).textTheme.headline5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CardApp(
                  press: ()=> Get.to(()=> UserScreen(),),
                  title: 'Delivery App',
                  discrbtion:
                  'We need delivery app but with a fun look,Our target is the user and the courier can use it easily',
                  color: Colors.blueAccent.withOpacity(0.6),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CardApp(
                  press: ()=> Get.to(()=> UsersScreen(),),
                  title: 'E-Commerce App',
                  discrbtion:
                  'We need shop app but with a fun look,Our target is the user and the courier can use it easily',
                  color: Colors.purple.withOpacity(0.6),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CardApp(
                  press: ()=> Get.to(()=> UserScreens(),),
                  title: 'Logo App',
                  discrbtion:
                  'We need shop app but with a fun look,Our target is the user and the courier can use it easily',
                  color: Colors.blueAccent.withOpacity(0.6),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CardApp(
                  press: ()=> Get.to(()=> User4Screens(),),
                  title: 'Yahoo App',
                  discrbtion:
                  'We need shop app but with a fun look,Our target is the user and the courier can use it easily',
                  color: Colors.purple.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
