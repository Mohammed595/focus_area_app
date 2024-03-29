
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefServ {

  late SharedPreferences sharedPref ;

  SharedPrefServ();


  static Future <SharedPrefServ> create () async {
    var intance =  SharedPrefServ();
    await intance.initSharedPref();
    print('Done inital Shared pref');
    return intance;
  }
  

  Future initSharedPref () async{
    sharedPref = await SharedPreferences.getInstance();
  }



}