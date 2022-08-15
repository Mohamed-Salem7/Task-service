import 'package:flutter/material.dart';

class PlusCard extends StatelessWidget {
  const PlusCard({Key? key, required this.press, this.image}) : super(key: key);

  final Function() press;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          if (image == null)
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 10.0,
                end: 10.0,
              ),
              child: InkWell(
                onTap: press,
                child: Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFB4E9F7),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                  ),
                ),
              ),
            ),
          if (image != null)
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 10.0,
                end: 10.0,
              ),
              child: InkWell(
                onTap: press,
                child: Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        '$image',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
