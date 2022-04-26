import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localizationlanguages/localstring.dart';
import 'package:localizationlanguages/test.dart';
void main() {
  runApp(
      GetMaterialApp(
        translations: LocalString(),
        locale: Locale('en','US'),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      )
  );
}
class MyHomePage extends StatelessWidget {
  final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},
    {'name':'العربية','locale': Locale('ar','DZ')},
  ];
  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }
  buildLanguageDialog(BuildContext context){
    showDialog(context: context,
        builder: (builder){
          return AlertDialog(
            title: Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(child: Text(locale[index]['name']),onTap: (){
                        print(locale[index]['name']);
                        updateLanguage(locale[index]['locale']);
                      },),
                    );
                  }, separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blue,
                );
              }, itemCount: locale.length
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('title'.tr),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('hello'.tr,style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Text('message'.tr,style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              Text('subscribe'.tr,style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
             TextFormField(
               keyboardType: TextInputType.text,
               decoration: InputDecoration(
                   labelText: 'name'.tr,
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(0.0),
                   )
               ),
             ),
              ElevatedButton(
                onPressed: (){
                buildLanguageDialog(context);
              }
              , child: Text('changelang'.tr)),
              ElevatedButton(
                onPressed: (){
                Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) => Test()), 
                );
              }
              , child: Text('changelang2'.tr)),
            ],
          ),
        )
    );
  }
  }
