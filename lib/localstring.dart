import 'package:get/get.dart';

class LocalString extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'hello':'Hello World',
      'message':'Welcome to My Page',
      'title':'Flutter Language - Localization',
      'subscribe':'Subscribe Now',
      'name':'Type your name',
      'changelang':'Change Language',
      'title2':'Talabat App',
      'hello2':'The goal of the App to Deliver things you want in your place ',
      'changelang2':'Go to Page'
    },
    'ar_DZ':{
      'hello':'اهلا بك',
      'message':'مرحبا بك فى التطبيق',
      'title':'يمكنك اختيار اللغة المناسبة لك',
      'subscribe':'اشترك معنا',
      'name':'اكتب اسمك',
      'changelang':'تغيير اللغة',
      'title2':'تطبيق طلبات',
      'hello2':'هدف التطبيق هو توصيل الاشياءالذى تريدها فى مكانك',
      'changelang2':'الذهاب للصفحة',
    }
  };
}