import 'package:flutter/material.dart';

class ScreenshotsPage extends StatelessWidget {
  const ScreenshotsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var image = [
      'assets/photos/1 (1).png',
      'assets/photos/2 (1).png',
      'assets/photos/3 (1).png',
      'assets/photos/4.png',
      'assets/photos/5.png',
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ScreenShots',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                image
                    .expand(
                      (e) => [Image.asset(e, width: 300), SizedBox(width: 20)],
                    )
                    .toList()
                  ..removeLast(),
          ),
        ),
      ],
    );
  }
}
