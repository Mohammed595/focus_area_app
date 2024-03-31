import 'package:flutter/material.dart';
import 'package:focus_area_app/core/contsans/colors.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/widgets/input_period.dart';

// ignore: must_be_immutable
class CustomTimePicker extends StatelessWidget {
  CustomTimePicker({super.key});

  TextEditingController hourceControl = TextEditingController();
  TextEditingController minuteControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 200, left: 30, right: 30),
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // cancel Btn
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              alignment: Alignment.topRight,
              child: const Icon(
                Icons.cancel,
                color: Colors.red,
                size: 27,
              ),
            ),
          ),

          // title
          const Text(
            'Enter period',
            style: TextStyle(
              color: Color(0xff828282),
              fontSize: 15,
            ),
          ),

          SizedBox(
            height: 15,
          ),

          // text feild

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputPeriod(
                isMinute: false,
                textController: hourceControl,
              ),
              SizedBox(
                width: 10,
              ),
              InputPeriod(
                isMinute: true,
                textController: minuteControl,
              ),
            ],
          ),

          Spacer(),

          // done Btn
          Center(
            child: GestureDetector(
              onTap: () {
                if (!minuteControl.text.isEmpty) {
                  if (hourceControl.text.isEmpty) {
                    hourceControl.text = '';
                  }
                  double sumMint = double.parse(hourceControl.text) * 60 +
                      double.parse(minuteControl.text);
                  print(sumMint.toInt());
                  Navigator.of(context).pop();
                }
              },
              child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.praimryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Done',
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
