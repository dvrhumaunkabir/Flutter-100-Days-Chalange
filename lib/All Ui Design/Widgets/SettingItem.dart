import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'forward_button.dart';

class SettingItem extends StatelessWidget {
   final String title;
   final Color bgColor;
   final Color iconColor;
   final IconData icon;
  const SettingItem({
    super.key,
     required this.title,
     required this.bgColor,
     required this.iconColor,
     required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red.shade100,
            ),
            child: Icon(Ionicons.earth, color: Colors.red),
          ),
          SizedBox(width: 20),
          Text(
            "Language",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Spacer(),
          Text(
            "English",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),

          SizedBox(width: 10,),
          forwadButton(),



        ],
      ),
    );
  }
}