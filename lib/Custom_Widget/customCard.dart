import 'package:flutter/material.dart';
import 'package:flutter_100_days_chalange/Styles/textStyles.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget ? trailing;

  const CustomCard({super.key, required this.title, required this.subtitle, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(2, 4),
          ),],),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: AppTextStyle.heading,),
              SizedBox(height: 4,),
              Text(subtitle,style: AppTextStyle.subtitle,)],),
          if(trailing!=null)trailing!,
        ],

      ),
    );
  }
}
