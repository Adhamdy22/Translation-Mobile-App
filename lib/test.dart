import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localizationlanguages/localstring.dart';
class Test extends StatelessWidget {
  const Test({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(title: Text('title2'.tr),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('hello2'.tr,style: TextStyle(fontSize: 15),),
            ],
          ),
        )
    );
  }
}