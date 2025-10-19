import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class forwadButton extends StatelessWidget {
  const forwadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(Ionicons.chevron_forward_outline),
    );
  }
}