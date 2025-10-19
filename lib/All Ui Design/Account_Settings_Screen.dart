import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'Widgets/SettingItem.dart';
import 'Widgets/forward_button.dart';

class AccountSettingsScreen extends StatefulWidget {

  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 100,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Settings",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Text(
            "Account",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset("assets/images/avatar.png", width: 70, height: 70),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      "Uranus Code",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Youtube Channel",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                forwadButton(),
              ],
            ),
          ),

          SizedBox(height: 40),
          Text(
            "Settings",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          SettingItem(  iconColor: Colors.red,icon: Icons.add, title: 'Notifation', bgColor: Colors.red.shade200,),

          SizedBox(height: 20),
         // SettingItem(),

        ],
      ),
    );
  }
}




