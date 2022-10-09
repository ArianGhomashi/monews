import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monews/constants/constants.dart';
import 'package:monews/screens/sample_news_screen.dart';
import 'package:monews/utility/utility.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabControler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabControler = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: Icon(
          Iconsax.notification_status,
          color: Colors.black,
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Image.asset('images/monews_logo.png'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 32,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(21.5),
              boxShadow: getDefaultBoxShadow(),
            ),
            height: 43,
            child: TabBar(
              indicator: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(21.5),
              ),
              indicatorColor: redColor,
              labelColor: Colors.white,
              unselectedLabelColor: greyColor,
              labelStyle: TextStyle(
                fontSize: 16,
                fontFamily: 'SB',
              ),
              controller: _tabControler,
              tabs: [
                Tab(
                  child: Text('دنبال میکنید'),
                ),
                Tab(
                  child: Text('پیشنهادی'),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabControler,
              children: [
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: _getMainNewsPart(),
                    ),
                    SliverToBoxAdapter(
                      child: _getMainNewsList(),
                    ),
                    SliverToBoxAdapter(
                      child: _getNewsPart(),
                    ),
                    _getNewsList(),
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: _getMainNewsPart(),
                    ),
                    SliverToBoxAdapter(
                      child: _getMainNewsList(),
                    ),
                    SliverToBoxAdapter(
                      child: _getNewsPart(),
                    ),
                    _getNewsList(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getNewsPart() {
    return Padding(
      padding: EdgeInsets.only(bottom: 22, right: 24, left: 24),
      child: Row(
        children: [
          Text(
            'مشاهده بیشتر',
            style: TextStyle(
              fontFamily: 'SB',
              color: redColor,
              fontSize: 12,
            ),
          ),
          Spacer(),
          Text(
            'خبرهایی که علاقه داری',
            style: TextStyle(
              fontFamily: 'SB',
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getMainNewsPart() {
    return Padding(
      padding: EdgeInsets.only(bottom: 24, right: 24, left: 24),
      child: Row(
        children: [
          Text(
            'مشاهده بیشتر',
            style: TextStyle(
              fontFamily: 'SB',
              color: redColor,
              fontSize: 12,
            ),
          ),
          Spacer(),
          Text(
            'خبرهای داغ',
            style: TextStyle(
              fontFamily: 'SB',
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getNewsList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => _getNewsBox(index),
        childCount: 10,
      ),
    );
  }

  Widget _getMainNewsList() {
    return Container(
      height: 350,
      child: ListView.builder(
        reverse: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _getMainNewsBox(index),
      ),
    );
  }

  Widget _getNewsBox(int _index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => SampleNewsScreen(index: _index)),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 24, left: 24, bottom: 20),
        width: 380,
        height: 132,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: getDefaultBoxShadow(),
        ),
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      'پاسخ منفی پورتو به چلسی برای جذب طارمی',
                      style: TextStyle(
                        fontFamily: 'SB',
                        color: blackBlueColor,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'باشگاه چلسی با پاسخ منفی پورتو روبه‌رو شد.',
                      style: TextStyle(
                        fontFamily: 'SM',
                        color: greyColor,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.more_horiz,
                          size: 20,
                          color: greyColor,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'خبرگزاری زومیت',
                              style: TextStyle(
                                fontFamily: 'SM',
                                color: blackBlueColor,
                                fontSize: 10,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Image.asset('images/zoomit_logo.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5, top: 5, bottom: 5),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    width: 116,
                    height: 116,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/main_news_item${_index}.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Container(
                      width: 69,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 3, 62, 0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        //get main news category
                        child: Text(
                          'ورزشی',
                          style: TextStyle(
                            fontFamily: 'SB',
                            color: Colors.white,
                            fontSize: 11,
                          ),
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
    );
  }

  Widget _getMainNewsBox(int _index) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SampleNewsScreen(
              index: _index,
            ),
          ),
        );
      }),
      child: Container(
        margin: EdgeInsets.only(right: 15, left: 15, bottom: 37),
        width: 279,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: getDefaultBoxShadow(),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  width: 271,
                  height: 159,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/main_news_item$_index.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  right: 13,
                  top: 13,
                  child: Container(
                    width: 58,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 3, 62, 0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      //get main news category
                      child: Text(
                        'ورزشی',
                        style: TextStyle(
                          fontFamily: 'SB',
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _getMainNewsInformation()
          ],
        ),
      ),
    );
  }

  Widget _getMainNewsInformation() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Row(
              children: [
                Text(
                  ' دقیقه قبل ۵',
                  style: TextStyle(
                    fontFamily: 'SB',
                    color: greyColor,
                    fontSize: 13,
                  ),
                ),
                Spacer(),
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
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 18),
            child: Text(
              'پاسخ منفی پورتو به چلسی برای جذب طارمی با طعم تهدید',
              style: TextStyle(
                fontFamily: 'SB',
                color: blackBlueColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.more_horiz,
                size: 20,
                color: greyColor,
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    'خبرگزاری آخرین خبر',
                    style: TextStyle(
                      fontFamily: 'SM',
                      color: blackBlueColor,
                      fontSize: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Image.asset('images/akharin_khabar_logo.png'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
