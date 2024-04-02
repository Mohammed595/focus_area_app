import 'package:flutter/material.dart';
import 'package:focus_area_app/core/routring/routers.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/data/save_focus_item.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/model/focus_model.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/widgets/custom_text_field_add_focus.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/widgets/save_btn.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/widgets/text_feild_period.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/widgets/title_for_form.dart';

class AddNewFocus extends StatefulWidget {
  AddNewFocus({super.key});

  @override
  State<AddNewFocus> createState() => _AddNewFocusState();
}

class _AddNewFocusState extends State<AddNewFocus> {
  int m = 25;
  TextEditingController textConlrTitle = TextEditingController();
  TextEditingController textConlrDesc = TextEditingController();
  TextEditingController textConlrPeriod = TextEditingController();
  String alart = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 200,
        left: 30,
        right: 30,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // cancel btn
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              alignment: Alignment.topRight,
              child: const Icon(
                Icons.cancel,
                color: Colors.red,
                size: 30,
              ),
            ),
          ),

          // title form
          const TitleForForm(
            title: 'Title',
          ),

          CustomTextFeildOfAddNewFocus(
            isDic: false, // it's title
            textEdConlr: textConlrTitle,
          ),

          const SizedBox(
            height: 15,
          ),

          const TitleForForm(
            title: 'Discrition',
          ),

          CustomTextFeildOfAddNewFocus(
            isDic: true,
            textEdConlr: textConlrDesc,
          ),

          const SizedBox(
            height: 15,
          ),

          // Period
          const TitleForForm(
            title: 'Period',
          ),

          // here please check from enter period
          TextFieldForPeriod(
            textControllerM: textConlrPeriod,
          ),
          Text(
            alart,
            style: TextStyle(color: Colors.red, fontSize: 10),
          ),

          //  Save Btn
          const Spacer(),
          SaveBtn(
            func: () {
              if (textConlrTitle.text.isEmpty ||
                  textConlrDesc.text.isEmpty ||
                  textConlrPeriod.text.isEmpty) {
                setState(() {
                  alart = 'Enter All Text feild is requrd';
                });
              } else {
                alart = '';

                setState(() {
                  addNewFocus('1', textConlrTitle.text, textConlrDesc.text,
                      textConlrPeriod.text);
                  SaveFocusItemService.getAllFocuss();
                });

                Navigator.of(context).pushNamed(Routers.homeScreen);
              }
            },
          ),
        ],
      ),
    );
  }

  Future<void> addNewFocus(
      String id, String title, String dec, String period) async {
    await SaveFocusItemService.addNewFocusItem(
      focusModel: FocusModel(
          id: id, title: title, description: dec, period: period, color: 'red'),
    );
  }
}
