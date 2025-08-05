import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark_web/controller/app_controller.dart';
import 'package:sampark_web/widgets/divider.dart';
import 'package:sampark_web/widgets/main_info.dart';
import 'package:sampark_web/widgets/screenshots_page.dart';
import 'package:sampark_web/widgets/web_features_widget.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = 700;
    final h = MediaQuery.of(context).size.height;
    AppController appController=Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/photos/logo.png",
            width: 30,
          ),
        ),
        title: Text('Web home page',style: TextStyle(fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 140, 255)),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {
                appController.downloadApk();
              },
              label: Text('Download App'),
              icon: Icon(Icons.download),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 700),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  MainInfo(),
                  SizedBox(height: 40),
                  MyDivider(),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Features',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WebFeaturesWidget(
                        icon: Icons.info,
                        title: 'Easy to use',
                        description:
                            'Sampark is easy to use app where you can connect with each other.',
                      ),
                      WebFeaturesWidget(
                        icon: Icons.info,
                        title: 'Secure chatting',
                        description:
                            'Sampark is very secure chat application using encryption and decryption.',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WebFeaturesWidget(
                        icon: Icons.info,
                        title: 'Realtime status update',
                        description:
                            'Sampark updates the status of the user when user is online and offline.',
                      ),
                      WebFeaturesWidget(
                        icon: Icons.info,
                        title: 'Video & Audio call',
                        description:
                            'Sampark provides audio and video feature in this app.',
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  MyDivider(),
                  SizedBox(height: 40),
                  ScreenshotsPage(),
                  SizedBox(height: 80),
                  SizedBox(height: 40),
                  Text('Developed by Nikhilesh', style: TextStyle(color: Colors.orange),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
