import 'package:flutter/material.dart';
import 'package:focus_area_app/core/contsans/colors.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/widgets/custom_text_field_add_focus.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/widgets/custom_time_picker.dart';

class AddNewFocus extends StatefulWidget {
  AddNewFocus({super.key});

  @override
  State<AddNewFocus> createState() => _AddNewFocusState();
}

class _AddNewFocusState extends State<AddNewFocus> {
  TimeOfDay timeOfDay = TimeOfDay.now();
  int m = 25 ;

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
          const Text(
            'Title',
            style: TextStyle(
              color: Color(0xff828282),
              fontSize: 15,
            ),
          ),

          const CustomTextFeildOfAddNewFocus(
            isDic: false, // it's title
          ),

          const SizedBox(
            height: 15,
          ),

          const Text(
            'Discrition',
            style: TextStyle(
              color: Color(0xff828282),
              fontSize: 15,
            ),
          ),
          const CustomTextFeildOfAddNewFocus(
            isDic: true,
          ),

          const SizedBox(
            height: 15,
          ),

          // Period

          const Text(
            'Period',
            style: TextStyle(
              color: Color(0xff828282),
              fontSize: 15,
            ),
          ),

          Center(
            child: GestureDetector(
              onTap: () {
                // design new modeel sheet to determine hources
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  barrierColor: Colors.black12,
                  builder: (context) {
                    return CustomTimePicker();
                  },
                );
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.praimryColor,
                    )),
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text(
                  '$m M',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.praimryColor,
                  ),
                ),
              ),
            ),
          ),

          Spacer(),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.praimryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
