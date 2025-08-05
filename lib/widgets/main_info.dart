import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark_web/controller/app_controller.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width < 700 ?700 :MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    AppController appController=Get.put(AppController());
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/photos/logo.png",
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "SAMPARK",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Text(
                'The Best App for Connecting with your Friends and family',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              // Text(
              //   'your Friends and family',
              //   style: TextStyle(
              //     fontSize: 40,
              //     fontWeight: FontWeight.bold,
              //     color: Theme.of(context).colorScheme.onBackground,
              //   ),
              // ),
              SizedBox(height: 5),
              Text(
                'App Version 1.0',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: w / 2,
                child: Text(
                  'Real time chat application using Firebase and Supabse to store user and data. This app provides realtime audio and video calling feature integrated with ZegoCloud. Call history can be seen and groups can be made. Realtime status of the user is shown.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      appController.downloadApk();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.android, size: 30),
                          SizedBox(width: 10),
                          Text(
                            'Download App',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: w / 50),
        Container(
          height: w / 2.5,
          width: w / 2.5,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('assets/photos/main.png')),
          ),
        ),
      ],
    );
  }
}
