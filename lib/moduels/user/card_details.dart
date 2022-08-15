import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key, required this.icon, required this.title, required this.type, required this.color}) : super(key: key);

  final IconData icon;
  final String title,type;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 8.0),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style:
                  Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$type',
                  style:
                  Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.grey,
                    fontSize: 15.0,
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
