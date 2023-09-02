import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Color(0xff101321).withOpacity(0.03),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/dieta.png",
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 6.0,
          ),
          Text("Otros"),
        ],
      ),
    );
  }
}
