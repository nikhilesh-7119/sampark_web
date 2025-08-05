import 'package:flutter/material.dart';

class WebFeaturesWidget extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  const WebFeaturesWidget({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width < 700 ?700 :MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      height: h/4,
      width: w / 2.5,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: w/10,
            height: h/7,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, size: w/25),
          ),
          SizedBox(width: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
