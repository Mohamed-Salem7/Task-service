import 'package:flutter/material.dart';

class AddFavourite extends StatelessWidget {
  const AddFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: InkWell(
        onTap: (){},
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 10.0),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: Icon(
                  Icons.favorite_border,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Add to Favourite',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
