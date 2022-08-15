import 'package:flutter/material.dart';
import 'package:untitled/component/components.dart';
import 'package:untitled/moduels/user/card_details.dart';

class UserDetails extends StatelessWidget {
  const UserDetails(
      {Key? key,
      required this.name,
      required this.text,
      required this.title,
      required this.type,
      required this.money})
      : super(key: key);

  final String name, text, title, type, money;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.only(bottom: 20, end: 20, start: 20.0),
      child: Align(
        alignment: AlignmentDirectional.center,
        child: Container(
          width: double.infinity,
          height: 215,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xFFB4E9F7)),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 15.0),
                  child: Text(
                    '$name',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 10),
                  child: Text(
                    '$text',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                myDivider(),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(top: 20.0, end: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardDetails(
                          title: '$title',
                          type: '$type',
                          icon: Icons.access_time,
                          color: Colors.lightBlueAccent,
                        ),
                        CardDetails(
                          title: '$money',
                          type: 'Prize',
                          icon: Icons.monetization_on,
                          color: Colors.red,
                        ),
                        CardDetails(
                          title: 'Top Level',
                          type: 'Entry',
                          icon: Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
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
