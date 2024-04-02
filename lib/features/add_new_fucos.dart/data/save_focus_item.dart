import 'dart:convert';

import 'package:focus_area_app/features/add_new_fucos.dart/model/focus_model.dart';
import 'package:focus_area_app/features/onbaording.dart/data/local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveFocusItemService {
  static const String focusItemsKey = 'focusItems';

  static SharedPreferences shardPref = SharedPrefServ.instanceOfSharedPref();

  static Future<void> addNewFocusItem({
    required FocusModel focusModel
  }) async {
    // fetch past data
    List<String> focusList = await shardPref.getStringList(focusItemsKey) ?? [];

    // encode data for save it inside list as single string
    focusList.add(jsonEncode(focusModel.toJson()));
    shardPref.setStringList(focusItemsKey, focusList);

    print('Done add new item');
  }

  static Future<List<FocusModel>> getAllFocuss() async {
    List<String> focussAsString =
        await shardPref.getStringList(focusItemsKey) ?? [];

    List<FocusModel> list = focussAsString.map((e) {
      return FocusModel.fromJson(jsonDecode(e));
    }).toList();
    print(list);

    return list;
  }

  static Future<FocusModel> getFocusItemById({
    required String idd
  }) async {
    List<String> getElement =
        await shardPref.getStringList(focusItemsKey) ?? [];

    List<FocusModel> xx =
        getElement.map((e) => FocusModel.fromJson(jsonDecode(e))).toList();

    print('Done return one preson');

    return xx.firstWhere((element) => element.id == idd);
  }


  static void reomveAll () {
    shardPref.remove(focusItemsKey);
  }
}
