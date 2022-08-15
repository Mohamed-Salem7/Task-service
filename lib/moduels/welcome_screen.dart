import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/component/components.dart';
import 'package:untitled/moduels/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/1725.jpg',
                  ),
                  fit: BoxFit.cover
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Pick Your Favourite Contests',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.grey[300],
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'We make great design work happen with our great community designer ',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Colors.grey[100],
                            ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=> Get.to(()=> HomeScreen(),),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20.0,
                            ),
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional.center,
                            child: Text(
                          'Get Started',
                          style: Theme.of(context).textTheme.headline6,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
