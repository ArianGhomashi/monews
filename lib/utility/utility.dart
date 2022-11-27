import 'package:flutter/material.dart';
import 'package:monews/data/media.dart';
import 'package:monews/data/suggested_tags.dart';

import '../constants/constants.dart';

List<BoxShadow> getDefaultBoxShadow() {
  return [
    BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 0,
      color: Color.fromRGBO(0, 0, 0, 0.02),
    ),
    BoxShadow(
      offset: Offset(0, 8),
      blurRadius: 18,
      color: Color.fromRGBO(0, 0, 0, 0.02),
    ),
    BoxShadow(
      offset: Offset(0, 32),
      blurRadius: 32,
      color: Color.fromRGBO(0, 0, 0, 0.02),
    ),
    BoxShadow(
      offset: Offset(0, 73),
      blurRadius: 44,
      color: Color.fromRGBO(0, 0, 0, 0.01),
    ),
    BoxShadow(
      offset: Offset(0, 129),
      blurRadius: 52,
      color: Color.fromRGBO(0, 0, 0, 0),
    ),
    BoxShadow(
      offset: Offset(0, 202),
      blurRadius: 57,
      color: Color.fromRGBO(0, 0, 0, 0),
    ),
  ];
}

List<String> tagName() {
  return [
    'همه',
    'جهان',
    'ورزش',
    'تکنولوژی',
    'علم و دانش',
    'سیاسی',
    'اقتصادی',
    'اجتماعی',
    'فرهنگی',
    'بازرگانی'
  ];
}

List<Media> mediaList() {
  return [
    Media(imagePath: 'images/zoomit.png', name: 'زومیت'),
    Media(imagePath: 'images/digiato.png', name: 'دیجیاتو'),
    Media(imagePath: 'images/varzesh3.png', name: 'ورزش سه'),
  ];
}

List<Widget> coverList() {
  return [
    Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 180,
      width: 350,
      decoration: BoxDecoration(
        color: blackBlueColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              'images/email_image.png',
            ),
          ),
          Positioned(
            bottom: 50,
            left: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '!خبرهایی باید ببینید',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SBlack',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'نگاهی به جذاب ترین خبرهای ۷ روز گذشته',
                  style: TextStyle(
                    fontFamily: 'SB',
                    color: greyColor,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 67,
                  height: 27,
                  decoration: BoxDecoration(
                    color: redColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'مشاهده',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'SB',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 180,
      width: 350,
      decoration: BoxDecoration(
        color: blackBlueColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              'images/paperplane.png',
            ),
          ),
          Positioned(
            bottom: 50,
            left: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'برترین اخبار کاربران',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SBlack',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'پربازدیدترین خبرهایی که شما منتشر کردید',
                  style: TextStyle(
                    fontFamily: 'SB',
                    color: greyColor,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 67,
                  height: 27,
                  decoration: BoxDecoration(
                    color: redColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'مشاهده',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'SB',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
  ];
}

List<SuggestedTags> suggestedTagsList() {
  return [
    SuggestedTags(imagePath: 'images/science_news.png', name: 'علمی پزشکی'),
    SuggestedTags(imagePath: 'images/sports_news.png', name: 'ورزشی'),
    SuggestedTags(imagePath: 'images/tech_news.png', name: 'تکنولوژی'),
  ];
}
