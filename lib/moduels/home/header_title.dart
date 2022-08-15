import 'package:flutter/material.dart';
import 'package:untitled/component/components.dart';
import 'package:untitled/layout/contest_type.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
    required this.title, required this.press,
  }) : super(key: key);

  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Text(
            '$title',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.black, fontSize: 20),
          ),
          Spacer(),
          InkWell(
            onTap: press,
            child: Row(
              children: [
                Text(
                  'Show all',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
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
