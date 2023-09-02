import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  Map<String, dynamic> data;
  bool isSelected;
  VoidCallback onTap;

  ItemTypeWidget({
    required this.data,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        decoration: BoxDecoration(
          color: isSelected
              ? Color(0xff27E1C1).withOpacity(0.3)
              : Color(0xff101321).withOpacity(0.03),
          borderRadius: BorderRadius.circular(14.0),
          // border: isSelected
          //     ? Border.all(
          //         width: 1.0,
          //         color: Color(0xff101321),
          //       )
          //     : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              data["image"],
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 6.0,
            ),
            Text(data["name"]),
          ],
        ),
      ),
    );
  }
}
