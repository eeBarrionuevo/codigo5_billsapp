import 'package:flutter/material.dart';

class ItemBillWidget extends StatelessWidget {
  Map data;

  ItemBillWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xff101321).withOpacity(0.05),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
        leading: Image.asset(
          "assets/images/dieta.png",
          height: 40,
          width: 40,
        ),
        title: Text(
          data["title"],
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: Color(0xff101321),
          ),
        ),
        subtitle: Text(
          data["datetime"],
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: Color(0xff101321).withOpacity(0.70),
          ),
        ),
        trailing: Text(
          "S/ ${data["price"]}",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Color(0xff101321),
          ),
        ),
      ),
    );
  }
}
