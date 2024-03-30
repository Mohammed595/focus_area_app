import 'package:flutter/material.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/widgets/custom_text_field_add_focus.dart';

class AddNewFocus extends StatefulWidget {
   AddNewFocus({super.key});

  @override
  State<AddNewFocus> createState() => _AddNewFocusState();
}

class _AddNewFocusState extends State<AddNewFocus> {
  TimeOfDay timeOfDay = TimeOfDay.now();

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
      padding:const EdgeInsets.all(15),
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
            isDic: false,// it's title
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
         const CustomTextFeildOfAddNewFocus(isDic: true,),

        const  SizedBox(
            height: 15,
          ),

          // Period
          Text('H: ${timeOfDay.hour}, M: ${timeOfDay.minute}'),

          GestureDetector(
            onTap: () async{
              TimeOfDay? tt = await showTimePicker(context: context, 
              initialTime: timeOfDay);

              if (tt != null){
                setState(() {
                  timeOfDay = tt; 
                });
              }
              
              
            },
            child: Container(
              child: Text ('Set period'),
            ),
          ),

          

        ],
      ),
    );
  }
}
