import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/moduels/user/favourite.dart';
import 'package:untitled/moduels/user/photo_card.dart';
import 'package:untitled/moduels/user/plus_card.dart';
import 'package:untitled/moduels/user/user_defention.dart';
import 'package:untitled/moduels/user/user_details.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          UserDef(
            image: 'assets/images/1.jpg',
            name: 'Dastagier',
            discrption: 'Nice',
          ),
          UserDetails(
            name: 'Delivery App',
            text:
                'We need delivery app but with a fun look,Our target is the user and the courier can use it easily',
            title: 'Dastagier',
            type: 'Deadline',
            money: '200',
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Total Participants',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      ' (11)',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.orangeAccent,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      PhotoCards(
                        image: 'assets/images/1.jpg',
                      ),
                      PhotoCards(
                        image: 'assets/images/2.jpg',
                      ),
                      PhotoCards(
                        image: 'assets/images/3.jpg',
                      ),
                      PhotoCards(
                        image: 'assets/images/4.jpg',
                      ),
                    ],
                  ),
                ),
                AddFavourite(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      PlusCard(
                        press: () {},
                      ),
                      PlusCard(
                        press: () {},
                        image: 'assets/images/shop.jpg',
                      ),
                      PlusCard(
                        press: () {},
                        image: 'assets/images/1725.jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
