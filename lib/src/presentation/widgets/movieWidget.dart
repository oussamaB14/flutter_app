import 'package:flutter/material.dart';

class Moviewidget extends StatelessWidget {
  const Moviewidget({super.key, required this.title, required this.imgUrl});
  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            child: Column(
          children: [
            Image(image: AssetImage('assets/images/$imgUrl')),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        )),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
