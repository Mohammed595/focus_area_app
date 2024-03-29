
import 'package:focus_area_app/core/contsans/key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefServ {

  static late SharedPreferences sharedPref ;

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

 static void setNewStateToOnBoardngState( bool newState) {
      sharedPref.setBool(AppKeies.onBoardingState, newState);
  }


  static bool checkonBoardingState () {
   return  sharedPref.getBool(AppKeies.onBoardingState) == true;
  }


}