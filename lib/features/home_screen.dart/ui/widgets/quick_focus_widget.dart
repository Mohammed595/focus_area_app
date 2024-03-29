

import 'package:flutter/material.dart';

class QuickFocusWidget extends StatelessWidget {
  const QuickFocusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 183, 183),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        children: [
          // icon
          CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 30,
          ),

          SizedBox(
            width: 10,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                'Quick',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // dic
              Text(
                'I want to focus now',
                style: TextStyle(fontSize: 12, color: Color(0xff656F77)),
              ),
            ],
          ),

          Spacer(),
          Icon(
            Icons.link,
            color: Colors.black87,
          )
        ],
      ),
    );
  }
}
