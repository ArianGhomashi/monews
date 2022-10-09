import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monews/constants/constants.dart';

class SampleNewsScreen extends StatelessWidget {
  SampleNewsScreen({Key? key, required this.index}) : super(key: key);

  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                leading: Icon(Icons.more_vert),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: GestureDetector(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                ],
                toolbarHeight: 80,
                backgroundColor: whiteColor,
                expandedHeight: 329,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/main_news_item${index}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(33),
                  child: Container(
                    height: 33,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, 0.2),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: _getNewsProperties(),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: TitleDelegate(),
              ),
            ];
          },
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            color: Colors.white,
            child: _getNewsText(),
          ),
        ),
      ),
    );
  }

  Widget _getNewsProperties() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ' دقیقه قبل ۵',
            style: TextStyle(
              fontFamily: 'SB',
              color: greyColor,
              fontSize: 13,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: redColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Row(
                children: [
                  Text(
                    'خبرگزاری آخرین خبر',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Image.asset('images/akharin_khabar_logo.png'),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'پیشنهاد مونیوز',
                style: TextStyle(
                  fontFamily: 'SB',
                  color: greyColor,
                  fontSize: 13,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Icon(
                  Iconsax.flash_circle5,
                  color: redColor,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getNewsText() {
    return Container(
      height: 200,
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Column(
                children: [
                  Text(
                    'بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه‌های اصلی هواداران دو تیم بود.این خبر درحالی رسانه‌ای شذ که گفته می‌شد چلسی باری جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنها داده است',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: blackBlueColor,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    'بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه‌های اصلی هواداران دو تیم بود.این خبر درحالی رسانه‌ای شذ که گفته می‌شد چلسی باری جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنها داده است',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: blackBlueColor,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    'بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه‌های اصلی هواداران دو تیم بود.این خبر درحالی رسانه‌ای شذ که گفته می‌شد چلسی باری جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنها داده است',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: blackBlueColor,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    'بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه‌های اصلی هواداران دو تیم بود.این خبر درحالی رسانه‌ای شذ که گفته می‌شد چلسی باری جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنها داده است',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: blackBlueColor,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    'بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه‌های اصلی هواداران دو تیم بود.این خبر درحالی رسانه‌ای شذ که گفته می‌شد چلسی باری جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنها داده است',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: blackBlueColor,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    'بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه‌های اصلی هواداران دو تیم بود.این خبر درحالی رسانه‌ای شذ که گفته می‌شد چلسی باری جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنها داده است',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: blackBlueColor,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    'بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه‌های اصلی هواداران دو تیم بود.این خبر درحالی رسانه‌ای شذ که گفته می‌شد چلسی باری جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنها داده است',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: blackBlueColor,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return _getNewsTitle();
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 275;

  @override
  // TODO: implement minExtent
  double get minExtent => 275;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

  Widget _getNewsTitle() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            //_getNewsProperties(),
            SizedBox(
              height: 32,
            ),
            Text(
              'پاسخ منفی پورتو به چلسی برای جذب طارمی با طعم تهدید',
              style: TextStyle(
                fontFamily: 'SB',
                color: blackBlueColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _getNewsTag('فوتبال اروپا'),
                SizedBox(
                  width: 15,
                ),
                _getNewsTag('لژیونرها'),
                SizedBox(
                  width: 15,
                ),
                _getNewsTag('ورزشی'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'باشگاه چلسی که پیگیر جذب مهدی طارمی مهاجـم ایران بـود، با پاسـخ منفی باشگاه پورتو مواجه شد و این بازیـکن باوجود رویای بازی در لیگ برتر انگلیس فعلا در پرتغال ماندنی است.',
              style: TextStyle(
                fontFamily: 'SB',
                color: blackBlueColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getNewsTag(String tag) {
    return Container(
      decoration: BoxDecoration(
        color: pinkColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        //get main news category
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            tag,
            style: TextStyle(
              fontFamily: 'SB',
              color: redColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
