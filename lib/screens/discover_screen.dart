import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monews/constants/constants.dart';
import 'package:monews/utility/utility.dart';
import 'package:marquee/marquee.dart';
import '../data/media.dart';
import '../widget/tag_list_widget.dart';

class DiscoverScreen extends StatefulWidget {
  DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Padding(
          padding: EdgeInsets.only(left: 24),
          child: Row(
            children: [
              Icon(
                Iconsax.search_normal,
                color: Colors.black,
              ),
              SizedBox(
                width: 23,
              ),
              Icon(
                Iconsax.filter_edit,
                color: Colors.black,
              ),
            ],
          ),
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Image.asset('images/monews_logo.png'),
      ),
      backgroundColor: whiteColor,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: _getCoverList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              SliverToBoxAdapter(
                child: _getTagList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              SliverToBoxAdapter(
                child: _getMediaPart(),
              ),
              SliverToBoxAdapter(
                child: _getSuggestedTagsPart(),
              ),
            ],
          ),
          Container(
            height: 48,
            color: redColor,
            child: Marquee(
              text:
                  'بی‌نظمی شدید در مراسم رونمایی از کاپ جام جهانی و قهر نماینده فیفا   ...   برانکو تکذیب کرد/ نه با عمان فسخ کردم، نه با ایران مذاکره داشتم   ...   ',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'SB',
                color: Colors.white,
              ),
              velocity: -50,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSuggestedTagsPart() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Text(
                'مشاهده بیشتر',
                style: TextStyle(
                  fontFamily: 'SB',
                  color: redColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'پیشنهاد سردبیر',
                style: TextStyle(
                  fontFamily: 'SB',
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 192,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: true,
              itemCount: suggestedTagsList().length,
              itemBuilder: (context, index) {
                return _getSuggestedTags(index);
              }),
        ),
      ],
    );
  }

  Widget _getSuggestedTags(int index) {
    return Padding(
      padding: EdgeInsets.only(left: 28, right: (index == 0) ? 28 : 0),
      child: Stack(
        children: [
          Container(
            width: 271,
            height: 159,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                suggestedTagsList()[index].imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 13,
            top: 13,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 3, 62, 0.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                //get main news category
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: Text(
                    suggestedTagsList()[index].name,
                    style: TextStyle(
                      fontFamily: 'SB',
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getTagList() {
    return Container(
      height: 36,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemBuilder: (context, _index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedindex = _index;
                });
              },
              child: TagList(
                index: _index,
                selectedIndex: _selectedindex,
                tagName: tagName(),
              ),
            );
          }),
    );
  }

  Widget _getCoverList() {
    return Container(
      height: 180,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: coverList().length,
        itemBuilder: (context, index) => coverList()[index],
      ),
    );
  }

  Widget _getMediaPart() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Text(
                'مشاهده بیشتر',
                style: TextStyle(
                  fontFamily: 'SB',
                  color: redColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'خبرگزاری ها',
                style: TextStyle(
                  fontFamily: 'SB',
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 192,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: true,
              itemCount: mediaList().length,
              itemBuilder: (context, index) {
                return _getMedia(index);
              }),
        ),
      ],
    );
  }

  Widget _getMedia(int index) {
    return Container(
      margin:
          EdgeInsets.only(left: 20, bottom: 32, right: (index == 0) ? 20 : 0),
      width: 133,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: getDefaultBoxShadow(),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(mediaList()[index].imagePath),
            SizedBox(
              height: 16,
            ),
            Text(
              mediaList()[index].name,
              style: TextStyle(
                fontFamily: 'SB',
                fontSize: 12,
                color: blackBlueColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 101,
              height: 30,
              decoration: BoxDecoration(
                color: pinkColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text(
                  'دنبال کردن',
                  style: TextStyle(
                    fontFamily: 'SB',
                    fontSize: 14,
                    color: redColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
