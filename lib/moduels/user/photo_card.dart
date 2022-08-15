import 'package:flutter/material.dart';

class PhotoCards extends StatelessWidget {
  const PhotoCards({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: CircleAvatar(
        radius: 18,
        backgroundImage: AssetImage('$image'),
      ),
    );
  }
}
