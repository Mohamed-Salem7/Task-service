import 'package:flutter/material.dart';
import 'package:untitled/component/components.dart';

class CardApp extends StatelessWidget {
  const CardApp({Key? key, required this.title, required this.discrbtion, required this.color, required this.press}) : super(key: key);

  final String title,discrbtion;
  final Color color;

  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: press,
        child: Container(
          height: 220,
          width: 350,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    '$discrbtion',
                    style:
                    Theme.of(context).textTheme.headline6!.copyWith(
                      color: Color(0xFFB4E9F7),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                myDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                        AssetImage('assets/images/1.jpg'),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                        AssetImage('assets/images/2.jpg'),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                        AssetImage('assets/images/3.jpg'),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                        AssetImage('assets/images/4.jpg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
