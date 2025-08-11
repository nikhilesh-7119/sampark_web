import 'package:get/get.dart';
import 'dart:html' as html;


class AppController extends GetxController {

  String appUrl='https://github.com/nikhilesh-7119/Sampark-Chat-App/releases/download/1.1.0/Sampark.1.1.0.apk';
  String apkName='Sampark.apk';

  Future downloadApk() async{
    try{
      final anchor =html.AnchorElement(href: appUrl)..download=apkName;
      html.document.body!.children.add(anchor);
      anchor.click();
      html.document.body!.children.remove(anchor);
    } catch(e){
      print(e);
    }
  }

}