import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TagList extends StatelessWidget {
  TagList(
      {Key? key,
      required this.index,
      required this.selectedIndex,
      required this.tagName})
      : super(key: key);

  int index;
  int selectedIndex;
  List<String> tagName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: (index == 0) ? 15 : 0),
      decoration: BoxDecoration(
        color: (index == selectedIndex) ? pinkColor : Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        //get main news category
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            tagName[index],
            style: TextStyle(
              fontFamily: 'SB',
              color: (index == selectedIndex) ? redColor : greyColor,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
